#!/bin/bash

curl https://raw.githubusercontent.com/tiger0421/docker-interactive_slam/master/install_interactive_slam.sh > /tmp/install.sh
chmod 774 install.sh
source /opt/ros/melodic/setup.bash
sh /tmp/install.sh
rm /tmp/install.sh
echo '#!/bin/sh' > /tmp/docker-entrypoint.sh
echo 'bash' >> /tmp/docker-entrypoint.sh
echo 'source /root/catkin_ws/devel/setup.bash' >> /root/.bashrc

exec "$@"
