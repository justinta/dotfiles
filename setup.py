'''
Setup all the dotfiles
'''
from __future__ import print_function

import shlex
import platform
import subprocess


def _cmd(cmd):
    if not isinstance(cmd, list):
        cmd = shlex.split(cmd)

    cmd_out = subprocess.popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = cmd_out.communicate()
    if stderr:
        return (stderr, cmd_out.retcode)
    return stdout


def _which(sys_pkg):
    '''
    run which
    '''
    return _cmd(['which', sys_pkg]).strip('\n')


def _install(pkg):
    '''
    Run the install command
    '''
    
    # MacOS
    if platform.system() == 'Darwin':
        if not _which('brew'):
            _cmd('/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"')

        cmd = [_which('brew'), 'install', pkg]
    elif platform.system() == 'Linux':
        dist,version,code = platform.dist()


