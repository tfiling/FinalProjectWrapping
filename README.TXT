Installation
===================

clone the project:
-----------------
git clone https://github.com/tfiling/FinalProjectWrapping.git

we used git LFS extension to mange this repository due to the big size of SHAS/webapps/SHAS.war.
install git LFS on your computer which can be downloaded from: https://git-lfs.github.com/.
if git LFS is not installed the SHAS.war file, which contains the actual application, will be represented as a symbolic link and not the actual file.
make sure that SHAS/webapps/SHAS.war size is ~18MB, if is smaller than 2MB download it as instructed in the zip download instructions(alternatively you can find out why git LFS didn't work for you)


download the project as .zip file
---------------------------------

download the repository's contents as .zip file from the repository's GitHub page.
in the repository's web page browse to the file SHAS/webapps/SHAS.war.
you should see above the embedded file explorer something like: "branch: master    FinalProjectWrapping/SHAS/webapps/SHAS.war"
click "Download" button and override SHAS/webapps/SHAS.war with the file you just downloaded.

Running The Application
=======================

Windows - run the runSHAS.bat file
Ubuntu - run runSHAS.sh using terminal

The application should run the jetty server and open the default web browser with the url of the web user interface - localhost:8888/SHAS


Running The Application
=======================

For the application be able to compile and add new algorithms you should set the path to your java compiler (requires JDK 1.8+ installed).
open the file SHAS/resources/conf.properties and edit the value set for the property prod-javac_path (or any other relevant mode):

for windows users should be similar to:
"prod-javac_path = C:/Program Files/Java/jdk-X.X.X/bin/javac.exe"

for ubuntu users should be similar to:
"prod-javac_path = /usr/bin/javac"

JETTY
=====
The Jetty project is a 100% Java HTTP Server, HTTP Client
and Servlet Container from the eclipse foundation

  http://www.eclipse.org/jetty/

Jetty is open source and is dual licensed using the Apache 2.0 and
Eclipse Public License 1.0.   You may choose either license when
distributing Jetty.