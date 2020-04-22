# docker-interactive_slam
For details, see https://github.com/SMRT-AIST/interactive_slam

# Support
- melodic

# Usage

```
curl https://raw.githubusercontent.com/tiger0421/docker-interactive_slam/master/launch.sh > launch.sh
sudo chmod a+x launch.sh
sh launch.sh 
```
In a container  
```
source /opt/ros/melodic/setup.bash
sh install_interactive_slam.sh
```

# Build
```
docker build -t IMAGE_NAME:TAG_NAME . 
```

# LICENSE
GPL3.0
