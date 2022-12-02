# Turtlebot3-Model-Burger

# TURTLEBOT3 MODEL BURGER

# Objectif:
Intégrer et utiliser différentes technologies logicielles au sein du framework ROS
Contrôler un robot mobile de différentes manières

Dans ce projet, nous allons utiliser la dernière distribution de ROS <ROS Noetic Ninjemys> qui est compatible avec Ubuntu 20.04, C++14, Python3, CMake 3.16.3, OpenCV 4.2, PCL 1.10.


 **NOTE: Problèmes possibles avec la migration des packages de ROS Melodic vers ROS Noetic**

La plupart des nœuds Python de ROS Melodic sont écrits en Python 2. Lors de la migration vers ROS Noetic, on aurait peut-être besoin de convertir tous les nœuds ROS en compatibles Python 3 ainsi que la vesion de cmake. Pour avoir plus d'information. [Migration python3](https://wiki.ros.org/UsingPython3), [Guide de migration](https://wiki.ros.org/noetic/Migration)


# Installation ROS Noetic


# Configuration du fichier source.list
Le fichier sources.list est une partie intégrante du système de gestion des paquets d'Ubuntu et est un élément-clé de la sécurité de votre système d'exploitation Ubuntu. Ce fichier définit quels sont les serveurs de téléchargements auxquels vous avez confiance et depuis lesquels vous désirez acquérir des logiciels.
```
$ sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

```
# Configuration des clès

C'est pour s'assurer que les packages ROS qu'on télécharge proviennent bien de la diffusion officiel de ROS.
```
$ sudo apt install curl 
$ curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
```
# Installation
***
Mise à jour toutes les informations sur les paquets à partir de toutes les sources configurées et installation de toutes packages de ros noetic.
Note: En cas de besoin d'un package specifique de ROS, on peut toujours l'installer grace à cette commande:

$ sudo apt install ros-noetic-PACKAGE
```
$ sudo apt update  
$ sudo apt install ros-noetic-desktop-full

```
# Configuration de l'environnement
***
Afin de pouvoir utiliser ROS il est nécessaire de configurer son environnement shell. Dans ce projet, nous utilisons bash.  Il suffit donc d’ajouter la ligne suivante au fichier .bashrc

```
$ gedit .bashrc
source /opt/ros/noetic/setup.bash

```
On peut aussi utiliser ces commandes pour sourcer automatoquement le script setup.bash à chaque fois qu'on nouveau shell est lancé.

```
$ echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
$ source ~/.bashrc

```

# Dépendances pour la création de packages
***
Après avoir installé et configuré l'environnement de ROS pour l'exécution des packages de ROS. Nous allons nous intéresser à des outils qui nous permettent de créer et de gérer nos propres espaces de travail ROS. [rosinstall] (https://wiki.ros.org/rosinstall)
rosdep est un outil en ligne de commande pour l'installation des dépendances du système. [rosdep] (https://wiki.ros.org/rosdep)

Installation de rosinstall et d'autres dépendances pour créer des packages ROS:
```
$ sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
$ sudo apt install python3-rosdep
$ sudo rosdep init
$ rosdep update

```
# Création de l'espace de travail
***
Pour créer son espace de travail il faut d’abord créer le répertoire associé et ensuite l'initialiser
```
$ mkdir -p ~/catkin_ws/src
$ cd ~/catkin_ws/src
$ catkin_init_workspace  #Optionnel
$ cd ~/catkin_ws/
$ catkin_make
$source devel/setup.bash

```

La commande catkin_make est une macro qui crée des répertoires et exécute la commande cmake. Los de sa première exercution, elle crée les répertoire build et devel ainsi que les fichiers CMakeLists.txt et package.xml. [catkin_make] (https://wiki.ros.org/catkin/commands/catkin_make)


Une fois le fichier setup.bash sourcé on peut trouver deux variables d’environnement trés importantes :
```
$ env | grep ROS

    ROS_VERSION=1
    ROS_PYTHON_VERSION=3
    ROS_PACKAGE_PATH=/home/kande/catkin_ws/src:/opt/ros/noetic/share
    ROSLISP_PACKAGE_DIRECTORIES=/home/kande/catkin_ws/devel/share/common-lisp
    ROS_ETC_DIR=/opt/ros/noetic/etc/ros
    ROS_MASTER_URI=http://localhost:11311
    ROS_ROOT=/opt/ros/noetic/share/ros
    ROS_DISTRO=noetic
```
La variable ROS_MASTER_URI indique comment trouver l’annuaire des objets. [Ros_master_uri] (https://wiki.ros.org/ROS/EnvironmentVariables#ROS_ROOT)
hostname (localhost) indique l’ordinateur où roscore est lancé. port_number (11311) indique le port où roscore attend les
connections.
La variable d’environnment ROS_PACKAGE_PATH indique les répertoires où chercher les paquets.


## Installation et exercution des paquets Turtlebot 3

***
1 -Installation de la dependance des paquets de ROS

```
$ sudo apt-get install ros-noetic-joy ros-noetic-teleop-twist-joy \
  ros-noetic-teleop-twist-keyboard ros-noetic-laser-proc \
  ros-noetic-rgbd-launch ros-noetic-rosserial-arduino \
  ros-noetic-rosserial-python ros-noetic-rosserial-client \
  ros-noetic-rosserial-msgs ros-noetic-amcl ros-noetic-map-server \
  ros-noetic-move-base ros-noetic-urdf ros-noetic-xacro \
  ros-noetic-compressed-image-transport ros-noetic-rqt* ros-noetic-rviz \
  ros-noetic-gmapping ros-noetic-navigation ros-noetic-interactive-markers
```
Ce package hls_lfcd_lds_driver est un pilote pour LDS-01. 
LDS-01 est un capteur scanner laser 2D qui est utilisé pour le SLAM (localisation et cartographie simultanées) et la navigation.
[hls_lfcd_lds_driver] (https://wiki.ros.org/hls_lfcd_lds_driver)

```
$ 
```

Le ROBOTIS Dynamixel SDK est une bibliothèque de développement logiciel qui fournit des fonctions de contrôle Dynamixel pour la communication par paquets.
[dynamixel_sdk] (https://wiki.ros.org/dynamixel_sdk)

```
$ sudo apt install ros-noetic-dynamixel-sdk

```

Les codes sources des paquets pour Turtlebot 3 sont téléchargés dans le site officiel de ROS [Turtlebot3] (https://wiki.ros.org/turtlebot3)

```
$ cd ~/catkin_ws/src/
$ git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
$ git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3.git
$ git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
$ cd ~/catkin_ws && catkin_make
$ echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashr

```
On peut vérifier que tous les paquets sont bien installés sur notre PC en utilisant la commande “rospack list”.
Pour éviter d'exporter le model burger à chaque fois qu'on exercute un paquet, on va l'ajouter dans le fichier .bashrc.

```
$ gedit ~/.bashrc
 export TURTLEBOT3_MODEL=burger
$ source ~/.bashrc

```
# Simulation Turtlebot3 sur RVIZ
****

Dans cette partie, nous allons utiliser la commande roslaunch qui permet de lancer plusieurs noeuds. roslaunch lit un fichier xml qui contient tous les paramètres pour lancer une application distribuée ROS.

**Contrôler le robot en téléopération (clavier)**

 La commande suivate lancera les nodes suivants: turtlebot3_fake, robot_state_publisher et rviz.

```
$ roslaunch turtlebot3_fake turtlebot3_fake.launch

```
On peut verifier les listes des nodes en cour d'exercution et les topics avec les commandes suivantes dans un nouveau terminal:

```
 $ rosnode list
 $ rostopic list

 ```
 En exercutant la commande suivate dans un nouveau terminal, on peut téléopérer le robot en tapant sur les touches du clavier du PC.

 ```
$ roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch

  ```
Les touches w et x permettent d’aller en avant et en arrière tout en augmentant et diminuant la vitesse linéaire de 0.22. Les touches a et d permettent de tourner à droite et à gauche tout en augmentant et diminuant la vitesse angulaire de 2.84. La touche s permet d'arreter le mouvement.

***Contrôler le robot en lui donnant un nav goal 2D***
***

Afin qu'on puisse demander le robot de se déplacer point d'un A point à un B, il doit être capable de connaitre son environnement et de son positon initiale. Pour le faire nous allons utiliser les paquets <turtlebot3_gazebo>, <turtlebot3_slam>et <turtlebot3_navigation >.
 

1 - Création de la carte SLAM

En exécutant les commandes suivantes sur différentes terminales, on peut téléopérer manuellement le robot sur rviz en utilisant les touches du clavier pour construire la carte. Une fois que le map est construit,  on va le sauvegarder afin qu'on puisse le réutiliser pour demander le robot de déplacer d'un point A à un  point B.
```
$ roslaunch turtlebot3_gazebo turtlebot3_world.launch
$ roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping
$ roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
$ rosrun map_server map_saver -f ~/map
```
2 - Navigation sur le map

****
La navigation permet à un robot de passer de la pose actuelle à la pose d'objectif désignée sur la carte en utilisant la carte.
 Il est maintenant temps de naviguer sur la carte que nous venons de créer .
 Lancez Gazebo en premier.
 Dans un nouveau terminal , lancez le fichier launch de la navigation avec les paramettres de la carte enrégistrée. Une fois qu'elle est exercutée, rviz s'ouvrira. 
 L'estimation de la pose initiale doit être effectuée avant d'exécuter la navigation.
  - Cliquez sur le bouton <2D Pose Estimate>  dans le menu RViz.
  -Cliquez sur la carte où se trouve le robot réel et en glissant la grande flèche verte vers la direction à laquelle le robot fait face. Ensuite le robot se mettra à la position estimée.
  -Cliquez sur le bouton 2D Nav Goal dans le menu RViz.
  -Cliquez sur la carte pour définir la destination du robot et faites glisser la flèche verte vers la direction à laquelle le robot sera confronté. Ensuite le TurtleBot3 commencera immédiatement à se déplacer vers la destination.

```
$ roslaunch turtlebot3_gazebo turtlebot3_world.launch
$ roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$HOME/map.yaml

```

# Multiplexeur de commande.
***
mux est un nœud ROS qui s'abonne à un ensemble de sujets entrants et republie les données entrantes de l'un d'eux vers un autre sujet. mux fait partie du package topic_tools 
[mux] (https://wiki.ros.org/topic_tools/mux)

```
$ cd ~/catkin_ws/src/
$ git clone -b noetic-devel https://github.com/ros-teleop/teleop_twist_keyboard.git
$ cd ~/catkin_ws && catkin_make
$ rosrun teleop_twist_keyboard teleop_twist_keyboard.py
```
Publication dans un autre sujet
```
$ rosrun teleop_twist_keyboard teleop_twist_keyboard.py cmd_vel:=my_cmd_vel
$ roslaunch turtlebot3_gazebo turtlebot3_world.launch
$ roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$HOME/map.yaml
```


# Téléopération à distance


****
Le package mqtt_client fournit un nodelet ROS qui permet aux appareils ou robots basés sur ROS connectés d'échanger des messages ROS via un courtier MQTT à l'aide du protocole MQTT .
[mqtt_client] (http://wiki.ros.org/mqtt_client)

```
$ sudo apt install ros-noetic-mqtt-client
$ cd ~/catkin_ws/src/
$ git clone -b noetic-devel https://github.com/ika-rwth-aachen/mqtt_client.git 
$ cd ~/catkin_ws && catkin_make
$ roslaunch mqtt_client standalone.launch

```

# Côté simulateur ROS

Creation un paquet <ros_mqtt> et ses dependances de premier ordre
```
$ cd ~/catkin_ws/src/
$ catkin_create_pkg ros_mqtt rospy roscpp nodelet std_msgs topic_tools geometry_msgs sensor_msgs nav_msgs turtlebot3_msgs
```

creation un node ros <ros_mqt.py> permettant de souscrire à topic MQTT </cmd_vel> et de publier une consigne de vitesse </topic_cmd_vel>.
```
$ cd ~/catkin_ws/src/ros_mqtt
$ mkdir -p ~/catkin_ws/src/ros_mqtt/scripts
$ cd ~/catkin_ws/src/ros_mqtt/scripts
```
Dans le fichier script, on crée le node ros_mqtt.py et ensuite on exercute la commande suivate pour obtenir la permission.

```
$ chmod +x ros_mqtt.py

```
Pour la construction des paquets necessaires, il  faut ajouter les deux balises dans le fichier package.xml.

```
  <build_depend>python-paho-mqtt-pip</build_depend>
  <exec_depend>python-paho-mqtt-pip</exec_depend>
```
Dans le fichier CMakeLists.txt, on ajoute ces lignes de code:

```
catkin_install_python(PROGRAMS
  scripts/ros_mqtt.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
```
En exercutant les commandes suivates, on peut voir un format du message MQTT représentant la consigne de vitesse.

```
$ roslaunch turtlebot3_gazebo turtlebot3_world.launch 
$ rosrun turtlebot3_teleop turtlebot3_teleop_key
$ roslaunch ros_mqtt ros_mqtt_pub.launch 

```

# Côté client non ROS
***
Création un node ros <mqtt_teleop.py> permettant de souscrire à topic MQTT </topic_cmd_vel>
Pour lancer le node, exercutez cette commande.

```
$ roslaunch ros_mqtt mqqt_teleop.launch 

```

# Envoi de Goal déterminé par un tag visuel
***
Installation cv_bridge
```
# sudo apt-get install ros-noetic-cv-bridge
```
Creation un paquet <tag_visuel> et ses dependances de premier ordre

creation un node ros <read_analyse_send.py> dont le but est de publier un topic /Visualization_april_tag' de type visualization_msgs/Marker

 TO DO

 # Utilisation des caractéristiques visuelles
 ***

 TO DO

 # Utilisation d’une capture d’image
***

  creation un node ros <publish_image.py> qui publie un topic /webcam de ty# TURTLEBOT3 MODEL BURGER

# Objectif:
Intégrer et utiliser différentes technologies logicielles au sein du framework ROS
Contrôler un robot mobile de différentes manières

Dans ce projet, nous allons utiliser la dernière distribution de ROS <ROS Noetic Ninjemys> qui est compatible avec Ubuntu 20.04, C++14, Python3, CMake 3.16.3, OpenCV 4.2, PCL 1.10.


 **NOTE: Problèmes possibles avec la migration des packages de ROS Melodic vers ROS Noetic**

La plupart des nœuds Python de ROS Melodic sont écrits en Python 2. Lors de la migration vers ROS Noetic, on aurait peut-être besoin de convertir tous les nœuds ROS en compatibles Python 3 ainsi que la vesion de cmake. Pour avoir plus d'information. [Migration python3](https://wiki.ros.org/UsingPython3), [Guide de migration](https://wiki.ros.org/noetic/Migration)


# Installation ROS Noetic


# Configuration du fichier source.list
Le fichier sources.list est une partie intégrante du système de gestion des paquets d'Ubuntu et est un élément-clé de la sécurité de votre système d'exploitation Ubuntu. Ce fichier définit quels sont les serveurs de téléchargements auxquels vous avez confiance et depuis lesquels vous désirez acquérir des logiciels.
```
$ sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

```
# Configuration des clès

C'est pour s'assurer que les packages ROS qu'on télécharge proviennent bien de la diffusion officiel de ROS.
```
$ sudo apt install curl 
$ curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
```
# Installation
***
Mise à jour toutes les informations sur les paquets à partir de toutes les sources configurées et installation de toutes packages de ros noetic.
Note: En cas de besoin d'un package specifique de ROS, on peut toujours l'installer grace à cette commande:

$ sudo apt install ros-noetic-PACKAGE
```
$ sudo apt update  
$ sudo apt install ros-noetic-desktop-full

```
# Configuration de l'environnement
***
Afin de pouvoir utiliser ROS il est nécessaire de configurer son environnement shell. Dans ce projet, nous utilisons bash.  Il suffit donc d’ajouter la ligne suivante au fichier .bashrc

```
$ gedit .bashrc
source /opt/ros/noetic/setup.bash

```
On peut aussi utiliser ces commandes pour sourcer automatoquement le script setup.bash à chaque fois qu'on nouveau shell est lancé.

```
$ echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
$ source ~/.bashrc

```

# Dépendances pour la création de packages
***
Après avoir installé et configuré l'environnement de ROS pour l'exécution des packages de ROS. Nous allons nous intéresser à des outils qui nous permettent de créer et de gérer nos propres espaces de travail ROS. [rosinstall] (https://wiki.ros.org/rosinstall)
rosdep est un outil en ligne de commande pour l'installation des dépendances du système. [rosdep] (https://wiki.ros.org/rosdep)

Installation de rosinstall et d'autres dépendances pour créer des packages ROS:
```
$ sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
$ sudo apt install python3-rosdep
$ sudo rosdep init
$ rosdep update

```
# Création de l'espace de travail
***
Pour créer son espace de travail il faut d’abord créer le répertoire associé et ensuite l'initialiser
```
$ mkdir -p ~/catkin_ws/src
$ cd ~/catkin_ws/src
$ catkin_init_workspace  #Optionnel
$ cd ~/catkin_ws/
$ catkin_make
$source devel/setup.bash

```

La commande catkin_make est une macro qui crée des répertoires et exécute la commande cmake. Los de sa première exercution, elle crée les répertoire build et devel ainsi que les fichiers CMakeLists.txt et package.xml. [catkin_make] (https://wiki.ros.org/catkin/commands/catkin_make)


Une fois le fichier setup.bash sourcé on peut trouver deux variables d’environnement trés importantes :
```
$ env | grep ROS

    ROS_VERSION=1
    ROS_PYTHON_VERSION=3
    ROS_PACKAGE_PATH=/home/kande/catkin_ws/src:/opt/ros/noetic/share
    ROSLISP_PACKAGE_DIRECTORIES=/home/kande/catkin_ws/devel/share/common-lisp
    ROS_ETC_DIR=/opt/ros/noetic/etc/ros
    ROS_MASTER_URI=http://localhost:11311
    ROS_ROOT=/opt/ros/noetic/share/ros
    ROS_DISTRO=noetic
```
La variable ROS_MASTER_URI indique comment trouver l’annuaire des objets. [Ros_master_uri] (https://wiki.ros.org/ROS/EnvironmentVariables#ROS_ROOT)
hostname (localhost) indique l’ordinateur où roscore est lancé. port_number (11311) indique le port où roscore attend les
connections.
La variable d’environnment ROS_PACKAGE_PATH indique les répertoires où chercher les paquets.


## Installation et exercution des paquets Turtlebot 3

***
1 -Installation de la dependance des paquets de ROS

```
$ sudo apt-get install ros-noetic-joy ros-noetic-teleop-twist-joy \
  ros-noetic-teleop-twist-keyboard ros-noetic-laser-proc \
  ros-noetic-rgbd-launch ros-noetic-rosserial-arduino \
  ros-noetic-rosserial-python ros-noetic-rosserial-client \
  ros-noetic-rosserial-msgs ros-noetic-amcl ros-noetic-map-server \
  ros-noetic-move-base ros-noetic-urdf ros-noetic-xacro \
  ros-noetic-compressed-image-transport ros-noetic-rqt* ros-noetic-rviz \
  ros-noetic-gmapping ros-noetic-navigation ros-noetic-interactive-markers
```
Ce package hls_lfcd_lds_driver est un pilote pour LDS-01. 
LDS-01 est un capteur scanner laser 2D qui est utilisé pour le SLAM (localisation et cartographie simultanées) et la navigation.
[hls_lfcd_lds_driver] (https://wiki.ros.org/hls_lfcd_lds_driver)

```
$ 
```

Le ROBOTIS Dynamixel SDK est une bibliothèque de développement logiciel qui fournit des fonctions de contrôle Dynamixel pour la communication par paquets.
[dynamixel_sdk] (https://wiki.ros.org/dynamixel_sdk)

```
$ sudo apt install ros-noetic-dynamixel-sdk

```

Les codes sources des paquets pour Turtlebot 3 sont téléchargés dans le site officiel de ROS [Turtlebot3] (https://wiki.ros.org/turtlebot3)

```
$ cd ~/catkin_ws/src/
$ git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
$ git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3.git
$ git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
$ cd ~/catkin_ws && catkin_make
$ echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashr

```
On peut vérifier que tous les paquets sont bien installés sur notre PC en utilisant la commande “rospack list”.
Pour éviter d'exporter le model burger à chaque fois qu'on exercute un paquet, on va l'ajouter dans le fichier .bashrc.

```
$ gedit ~/.bashrc
 export TURTLEBOT3_MODEL=burger
$ source ~/.bashrc

```
# Simulation Turtlebot3 sur RVIZ
****

Dans cette partie, nous allons utiliser la commande roslaunch qui permet de lancer plusieurs noeuds. roslaunch lit un fichier xml qui contient tous les paramètres pour lancer une application distribuée ROS.

**Contrôler le robot en téléopération (clavier)**

 La commande suivate lancera les nodes suivants: turtlebot3_fake, robot_state_publisher et rviz.

```
$ roslaunch turtlebot3_fake turtlebot3_fake.launch

```
On peut verifier les listes des nodes en cour d'exercution et les topics avec les commandes suivantes dans un nouveau terminal:

```
 $ rosnode list
 $ rostopic list

 ```
 En exercutant la commande suivate dans un nouveau terminal, on peut téléopérer le robot en tapant sur les touches du clavier du PC.

 ```
$ roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch

  ```
Les touches w et x permettent d’aller en avant et en arrière tout en augmentant et diminuant la vitesse linéaire de 0.22. Les touches a et d permettent de tourner à droite et à gauche tout en augmentant et diminuant la vitesse angulaire de 2.84. La touche s permet d'arreter le mouvement.

***Contrôler le robot en lui donnant un nav goal 2D***
***

Afin qu'on puisse demander le robot de se déplacer point d'un A point à un B, il doit être capable de connaitre son environnement et de son positon initiale. Pour le faire nous allons utiliser les paquets <turtlebot3_gazebo>, <turtlebot3_slam>et <turtlebot3_navigation >.
 

1 - Création de la carte SLAM

En exécutant les commandes suivantes sur différentes terminales, on peut téléopérer manuellement le robot sur rviz en utilisant les touches du clavier pour construire la carte. Une fois que le map est construit,  on va le sauvegarder afin qu'on puisse le réutiliser pour demander le robot de déplacer d'un point A à un  point B.
```
$ roslaunch turtlebot3_gazebo turtlebot3_world.launch
$ roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping
$ roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
$ rosrun map_server map_saver -f ~/map
```
2 - Navigation sur le map

****
La navigation permet à un robot de passer de la pose actuelle à la pose d'objectif désignée sur la carte en utilisant la carte.
 Il est maintenant temps de naviguer sur la carte que nous venons de créer .
 Lancez Gazebo en premier.
 Dans un nouveau terminal , lancez le fichier launch de la navigation avec les paramettres de la carte enrégistrée. Une fois qu'elle est exercutée, rviz s'ouvrira. 
 L'estimation de la pose initiale doit être effectuée avant d'exécuter la navigation.
  - Cliquez sur le bouton <2D Pose Estimate>  dans le menu RViz.
  -Cliquez sur la carte où se trouve le robot réel et en glissant la grande flèche verte vers la direction à laquelle le robot fait face. Ensuite le robot se mettra à la position estimée.
  -Cliquez sur le bouton 2D Nav Goal dans le menu RViz.
  -Cliquez sur la carte pour définir la destination du robot et faites glisser la flèche verte vers la direction à laquelle le robot sera confronté. Ensuite le TurtleBot3 commencera immédiatement à se déplacer vers la destination.

```
$ roslaunch turtlebot3_gazebo turtlebot3_world.launch
$ roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$HOME/map.yaml

```

# Multiplexeur de commande.
***
mux est un nœud ROS qui s'abonne à un ensemble de sujets entrants et republie les données entrantes de l'un d'eux vers un autre sujet. mux fait partie du package topic_tools 
[mux] (https://wiki.ros.org/topic_tools/mux)

```
$ cd ~/catkin_ws/src/
$ git clone -b noetic-devel https://github.com/ros-teleop/teleop_twist_keyboard.git
$ cd ~/catkin_ws && catkin_make
$ rosrun teleop_twist_keyboard teleop_twist_keyboard.py
```
Publication dans un autre sujet
```
$ rosrun teleop_twist_keyboard teleop_twist_keyboard.py cmd_vel:=my_cmd_vel
$ roslaunch turtlebot3_gazebo turtlebot3_world.launch
$ roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$HOME/map.yaml
```


# Téléopération à distance


****
Le package mqtt_client fournit un nodelet ROS qui permet aux appareils ou robots basés sur ROS connectés d'échanger des messages ROS via un courtier MQTT à l'aide du protocole MQTT .
[mqtt_client] (http://wiki.ros.org/mqtt_client)

```
$ sudo apt install ros-noetic-mqtt-client
$ cd ~/catkin_ws/src/
$ git clone -b noetic-devel https://github.com/ika-rwth-aachen/mqtt_client.git 
$ cd ~/catkin_ws && catkin_make
$ roslaunch mqtt_client standalone.launch

```

# Côté simulateur ROS

Creation un paquet <ros_mqtt> et ses dependances de premier ordre
```
$ cd ~/catkin_ws/src/
$ catkin_create_pkg ros_mqtt rospy roscpp nodelet std_msgs topic_tools geometry_msgs sensor_msgs nav_msgs turtlebot3_msgs
```

creation un node ros <ros_mqt.py> permettant de souscrire à topic MQTT </cmd_vel> et de publier une consigne de vitesse </topic_cmd_vel>.
```
$ cd ~/catkin_ws/src/ros_mqtt
$ mkdir -p ~/catkin_ws/src/ros_mqtt/scripts
$ cd ~/catkin_ws/src/ros_mqtt/scripts
```
Dans le fichier script, on crée le node ros_mqtt.py et ensuite on exercute la commande suivate pour obtenir la permission.

```
$ chmod +x ros_mqtt.py

```
Pour la construction des paquets necessaires, il  faut ajouter les deux balises dans le fichier package.xml.

```
  <build_depend>python-paho-mqtt-pip</build_depend>
  <exec_depend>python-paho-mqtt-pip</exec_depend>
```
Dans le fichier CMakeLists.txt, on ajoute ces lignes de code:

```
catkin_install_python(PROGRAMS
  scripts/ros_mqtt.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
```
En exercutant les commandes suivates, on peut voir un format du message MQTT représentant la consigne de vitesse.

```
$ roslaunch turtlebot3_gazebo turtlebot3_world.launch 
$ rosrun turtlebot3_teleop turtlebot3_teleop_key
$ roslaunch ros_mqtt ros_mqtt_pub.launch 

```

# Côté client non ROS
***

Création un node ros <mqtt_teleop.py> permettant de souscrire à topic MQTT </topic_cmd_vel>
Pour lancer le node, exercutez cette commande.

```
$ roslaunch ros_mqtt mqqt_teleop.launch 

```

# Envoi de Goal déterminé par un tag visuel
***
```
Installation cv_bridge
```
# sudo apt-get install ros-noetic-cv-bridge
```

Creation un paquet <tag_visuel> et ses dependances de premier ordre

creation un node ros <read_analyse_send.py> dont le but est de publier un topic /Visualization_april_tag' de type visualization_msgs/Marker

 TO DO

 # Utilisation des caractéristiques visuelles
 ***

 TO DO

 # Utilisation d’une capture d’image
***

  creation un node ros <publish_image.py> qui publie un topic /webcam de type <sensor_msgs/Image>
  Pour verifier son fonctionnement, on peut exercuter les commandes suivantes et sourcrire au node image view de rviz le topic </webcam>
```
$ roslaunch tag_visuel publish_image.launch 
$ rqt_image_view
```

TO DO

  

pe <sensor_msgs/Image>
  Pour verifier son fonctionnement, on peut exercuter les commandes suivantes et sourcrire au node image view de rviz le topic </webcam>
```
$ roslaunch tag_visuel publish_image.launch 
$ rqt_image_view
```

TO DO

  
# Temps passé pour chaque question:
***

Question 1:
 J'ai fait 4h sans la redaction du fichier readme
 Question 2:
 J'ai fait 2h.
 
 Question 3:
 J'ai fait 4h.
 
 Question 4: 
 J'ai fait 1h.
 
 Question 6:
  J'ai fait 2h.







