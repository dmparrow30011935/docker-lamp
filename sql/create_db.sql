use containerdb;

CREATE TABLE IF NOT EXISTS USERS (

    user_ID VARCHAR(40),
    username VARCHAR(20) NOT NULL,
    fullname VARCHAR(100) NOT NULL, 
    email VARCHAR(100) NOT NULL, 
    lvl VARCHAR(5) DEFAULT 'USER',
    pwd VARCHAR(100)NOT NULL,
    Constraint USERS_PK PRIMARY KEY (user_ID)
);

CREATE TABLE IF NOT EXISTS IMGS(
    user_ID VARCHAR(40) ,
    header VARCHAR(50),
    content_number VARCHAR(40),
    content_Path VARCHAR(255),
    Constraint Photos_PK PRIMARY KEY (user_ID,  content_number),
    FOREIGN KEY (user_ID) REFERENCES USERS (user_ID) ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS TEXTS(
    user_ID VARCHAR(40) ,
    header VARCHAR(50),
    content_number VARCHAR(40),
    content_Path VARCHAR(255),
    PRIMARY KEY (user_ID, content_number),
    FOREIGN KEY (user_ID) REFERENCES USERS (user_ID) ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS LINKS(
    user_ID VARCHAR(40) ,
    header VARCHAR(50),
    content_number VARCHAR(40),
    content_Path VARCHAR(255),
    PRIMARY KEY (user_ID, content_number),
    FOREIGN KEY (user_ID) REFERENCES USERS (user_ID) ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS CODES(
    user_ID VARCHAR(40) ,
    header VARCHAR(50),
    content_number VARCHAR(40),
    content_Path VARCHAR(255),
    code_language VARCHAR(20),
    PRIMARY KEY (user_ID, content_number),
    FOREIGN KEY (user_ID) REFERENCES USERS (user_ID) ON DELETE CASCADE
)ENGINE=InnoDB;

use containerdb;
CREATE TABLE IF NOT EXISTS MESSAGES(
    user_ID VARCHAR(40),
    header VARCHAR(50),
    content_number INT(11) NOT NULL AUTO_INCREMENT,
    MESSAGE_BODY VARCHAR(255) NOT NULL,
    PRIMARY KEY (content_number, user_ID),
    FOREIGN KEY (user_ID) REFERENCES USERS (user_ID) ON DELETE CASCADE
)ENGINE=InnoDB,
AUTO_INCREMENT = 1;




