#JAVA_HOME=/opt/java/openjdk CC=/usr/bin/gcc-8 CXX=/usr/bin/g++-8 sudo -u build --preserve-env=JAVA_HOME,CC,CXX bash configure
sudo -u build make clean images

JAVA_HOME=/opt/java/openjdk CC=/usr/bin/gcc-8 CXX=/usr/bin/g++-8 bash configure
make clean images
build/linux-x86_64-server-release/images/jdk/bin/java --version
