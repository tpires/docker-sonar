# docker-sonar

SonarQube is an open platform to manage code quality.

The SonarQube platform is made of 3 components:

1. One Database to store
2. One Web Server for users to browse quality snapshots and configure the SonarQube instance
3. One or more Analyzers to analyze projects.

### Description

On this repo you'll find 2 images that provide the first 2 components: 

	* Database (sonar-mysql)
	* WebServer (sonar-server).

### Setup

1. First you need to run the database image, but you need to give it a name so it can be later linked with the sonar-server:

	`docker run -i -t -d -p 3306:3306 --name smysql tpires/sonar-mysql`

	### Default user and password

	Default user and password for mysql is sonar:123qwe.

2. Now you need to run the server and link it with the database. That link will be named "db".

	`docker run -i -t -d --name sonar -p 9000:9000 --link smysql:db tpires/sonar-server`

You can now access to sonar-server by opening your browser to http://localhost:9000 .
