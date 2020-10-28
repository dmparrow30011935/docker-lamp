# Setup new container

Stop any current containers you have going this will free up the ports that are in use:

`docker stop $(docker ps -a)`

Navigate to your desktop (or anywhere you want to save your files)

`cd ~/Desktop`

Set a Global Variable temporary for the folder name

`FOLDER=<VALUE>` where <VALUE> = the name you want your project to be

Download the docker-compose file

`curl -LOk https://github.com/to-jk11/php-container-kit/archive/master.zip && unzip master.zip && rm -f master.zip && mv php-container-kit-master $FOLDER && mkdir -p $FOLDER/www`

Note you can rename PHPWEB101 into anything you want, but when you see PHPWEB101 anywhere below you will need to substitute that name with what you have chosen.

Go into the PHPWEB101 folder:

`cd $FOLDER`

Run the docker-compose command to get your containers up and running:

`docker-compose up -d`

The www folder serves as the root folder of your website. So that is where you put your files.

You can now open the www in your favourite code editor. (for example `code www`)

*The container has been setup with the apache2 rewrite module enabled.*
