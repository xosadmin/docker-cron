# docker-cron
A container to run crontab by docker
  
Usage: Using DockerHub image:  
`` docker run -d -e TZ=<timezone> -v /path/to/custom-config/folder:/etc/cron.d xosadmin/docker-cron ``  
  
Note: For timezone, the default value is ``UTC``. Please visit https://en.wikipedia.org/wiki/List_of_tz_database_time_zones for all timezone values.  
