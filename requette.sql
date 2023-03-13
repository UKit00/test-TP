/*
    Créer une base de données puis importer le fichier
*/

CREATE TABLE users (
    id_user INTEGER PRIMARY KEY AUTO_INCREMENT,
    passwd VARCHAR(25) NOT NULL,
    nameU VARCHAR(30) NOT NULL,
    firstNameU VARCHAR(50),
    emailU VARCHAR(100) NOT NULL
);

CREATE TABLE themes (
    id_theme INTEGER PRIMARY KEY AUTO_INCREMENT,
    nameT VARCHAR(30) NOT NULL,
    descriptionT TEXT
);

CREATE TABLE subjects (
    id_subject INTEGER PRIMARY KEY AUTO_INCREMENT,
    titleSu VARCHAR(100) NOT NULL,
    dateSu DATE,
    timeSu TIME,
    id_user INTEGER,
    id_theme INTEGER,
    FOREIGN KEY (id_user) REFERENCES users(id_user),
    FOREIGN KEY (id_theme) REFERENCES themes(id_theme)
);

CREATE TABLE messages (
    id_message INTEGER PRIMARY KEY AUTO_INCREMENT,
    titleM VARCHAR(100),
    dateM DATE,
    timeM TIME,
    textM TEXT,
    id_user INT,
    id_subject INT,
    CONSTRAINT fk_messages_users FOREIGN KEY(id_user) REFERENCES users(id_user),
    CONSTRAINT fk_messages_subjects FOREIGN KEY(id_subject) REFERENCES subjects(id_subject)
);



