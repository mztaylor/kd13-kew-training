# Kuali Days 2013 KEW Training

# Purpose
To help users understand the functionality related to KEW and how to add it to their client applications

# Setup Requirements
- MySQL 5.5.18
- MySQL Workbench
- SVN 1.7+
- Maven 3.0.4+
- Eclipse 3.8+ (or Spring Tool Suite 3.3+)

# Eclipse and Rice Setup

You will need to install a copy of eclipse, mysql, and rice for this project.  Instructions for setup can be found at:

    http://site.kuali.org/rice/2.3.2/reference/html/Intro_To_Rice.html#d4798e2496

# Project Setup

Clone a copy of the git project by using Eclipse > 'Import' > 'Git' > 'Git Project' and 'git@github.com:mztaylor/kd13-kew-training.git'


# Troubleshooting
- I'm getting 'Unable to update maven project - Unsupported IClasspathEntry kind=4'
-- Right click on the project, select maven - disable maven nature
-- Right click -> Run as -> Maven 'eclipse:clean'
-- Right click -> Configure -> Enable Maven nature

