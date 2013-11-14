# Kuali Days 2013 KEW Training

# Purpose
To help users understand the functionality related to KEW and how to add it to their client applications

# Setup

## Setup Requirements
- Java JDK 1.6+ - http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html
- MySQL 5.5.18 - http://dev.mysql.com/downloads/mysql/
- MySQL Workbench - http://dev.mysql.com/downloads/tools/workbench/
- SVN 1.7+ - https://subversion.apache.org/packages.html
- Maven 3.0.4+ - http://maven.apache.org/download.cgi
- Eclipse 3.8+ (or Spring Tool Suite 3.3+) - https://spring.io/tools/sts/all

## Eclipse and Rice Setup

You will need to install java, eclipse, mysql for this project.  Instructions for setup can be found at:

    http://site.kuali.org/rice/2.3.2/reference/html/Intro_To_Rice.html#d4798e2496

## Project Setup

### Setup kew training project
Clone a copy of the git project by using Eclipse > 'Import' > 'Git' > 'Projects from Git'
On the repository source select 'Github' and enter 'git@github.com:mztaylor/kd13-kew-training.git'

### Build environment
Once the project is checked out, check that it is a maven project by the 'm' icon over the project name.  You can also right
click on the project and should see maven item in the selection.  If it is not there, select 'Configure' > 'Enable Maven Nature'

Right click on the project and select 'Maven' > 'Update Project'.  Then select 'Run as' > 'maven install' to build the project.

### Database Setup
Then select 'Run as' > 'maven build...'.  Set the goal to 'clean install' and profiles to 'mysql,setup'.  Select 'apply' and 'run'.

### Application startup

Right click the project and select 'Run as ' > 'Run as server'.  Select the tomcat 7 server and on Argument tab, add to vm arguments:

    -Xms512m -Xmx1024m -XX:PermSize=256m  -XX:MaxPermSize=256m

Select 'apply' button and 'run' button.  The server should startup and you can select the [project home page](http://localhost:8080/krworkshop/)
 
# Training Overview

## Part 1: KIM Introduction
### Identity
 - Principals
 - Groups
 - Roles
 -- Derived Roles
 -- Qualified Resolvers

### Access:
 - Responsibility (Template)
 - Permission (Template)

## Part 2: KEW Introduction
### Document Type
 - Actions
 - Policies
 - Route paths and nodes
 - Rules and roles

# Troubleshooting

I'm getting 'Unable to update maven project - Unsupported IClasspathEntry kind=4'
- Right click on the project, select maven - disable maven nature
- Right click -> Run as -> Maven 'eclipse:clean'
- Right click -> Configure -> Enable Maven nature



