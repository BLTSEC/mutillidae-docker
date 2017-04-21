# mutillidae-docker

Dockerfile for Mutillidae II v2.6.44 running on Ubuntu 16.04 with a Xampp v5.6.30 stack
# Description

Dockerfile for creating an Ubuntu 16.04 / Xampp v5.6.30 stack container for OWASP Mutillidae II Web Pen-Test Practice Application v2.6.44

# Pull Docker Image
[Docker Store](https://store.docker.com/community/images/bltsec/mutillidae-docker)
or
docker pull bltsec/mutillidae-docker

# Quickstart

**Pull Docker Image**

Pull image: docker pull bltsec/mutillidae-docker

Start: docker run -d -p 80:80 -p 443:443 --name owasp17 bltsec/mutillidae-docker

**Build Docker Image**

Create an empty direcotry and place the Dockerfile in it

Create the image using terminal: docker build -t mutillidae .

Start: docker run -d -p 80:80 -p 443:443 --name owasp17 bltsec/mutillidae-docker

# Start Hacking!!
* Go to the browser and enter http://localhost:PortYouSpecifiedForHttp/mutillidae

# Enable SSL
* Go to the browser and enter http://localhost:PortYouSpecifiedForHttp/mutillidae
* Click Enforce SSL in the web application
* Now to to https://localhost:PortYouSpecifiedForHttps/mutillidae

# Features
* Has over 40 vulnerabilities and challenges. Contains at least one vulnerability for each of the OWASP Top Ten 2007, 2010 and 2013
* Actually Vulnerable (User not asked to enter “magic” statement)
* Mutillidae can be installed on Linux, Windows XP, and Windows 7 using XAMMP making it easy for users who do not want to install or administrate their own webserver. Mutillidae is confirmed to work on XAMPP, WAMP, and LAMP.
* Installs easily by dropping project files into the "htdocs" folder of XAMPP.
* Will attempt to detect if the MySQL database is available for the user
* Preinstalled on Rapid7 Metasploitable 2, Samurai Web Testing Framework (WTF), and OWASP Broken Web Apps (BWA)
* Contains 2 levels of hints to help users get started
* Includes bubble-hints to help point out vulnerable locations
* Bubble-hints automatically give more information as hint level incremented
* System can be restored to default with single-click of "Setup" button
* User can switch between secure and insecure modes
* Secure and insecure source code for each page stored in the same PHP file for easy comparison
* Provides data capture page and stores captured data in database and file
* Allows SSL to be enforced in order to practice SSL stripping
* Used in graduate security courses, in corporate web sec training courses, and as an "assess the assessor" target for vulnerability software
* Mutillidae has been tested/attacked with Cenzic Hailstorm ARC, W3AF, SQLMAP, Samurai WTF, Backtrack, HP Web Inspect, Burp-Suite, NetSparker Community Edition, and other tools
* Instructional Videos: http://www.youtube.com/user/webpwnized 
* Updates tweeted to @webpwnized
* Updated frequently
* Project Whitepaper: http://www.giac.org/paper/gwapt/3387/introduction-owasp-mutillidae-ii-web-pen-test-training-environment/126917 
