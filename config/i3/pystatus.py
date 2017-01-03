import logging
from i3pystatus import Status
from i3pystatus.weather import weathercom

status = Status(logfile='/var/log/i3pystatus.log')

# Clock
status.register('clock', format='| %a %-d %b %R |',)

# Network
status.register('network', interface='eno1', format_up='{v4cidr}',)

# Spotify
status.register('spotify', format='| {status} {artist} - {title} |')

# Weather
status.register('weather', format='{city}: {current_temp}{temp_unit}[ {icon}][ Hi: {high_temp}][ Lo: {low_temp}]',
                colorize=True,
                hints={'markup': 'pango'},
                log_level=logging.DEBUG,
                backend=weathercom.Weathercom(
                    location_code='84020',
                    units='imperial',
                    log_level=logging.DEBUG,
                ),
)

status.run()
