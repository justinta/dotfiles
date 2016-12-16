from i3pystatus import Status

status = Status()

# Clock
status.register('clock', format='%a %-d %b %R ',)

# Network
status.register('network', interface='eno1', format_up='{v4cidr}',)

status.run()
