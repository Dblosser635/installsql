CREATE TABLE sitesettings(
id INT NOT NULL AUTO_INCREMENT,
name TEXT NOT NULL,
color TEXT NOT NULL,
currency TEXT NOT NULL,
description MEDIUMTEXT,
search BOOLEAN NOT NULL,
store BOOLEAN NOT NULL,
team BOOLEAN NOT NULL,
tos BOOLEAN NOT NULL,
contact BOOLEAN NOT NULL,
gallery BOOLEAN NOT NULL,
review BOOLEAN NOT NULL,
notfound BOOLEAN NOT NULL,
homepagestats BOOLEAN NOT NULL,
homepagesearch BOOLEAN NOT NULL,
homepagefeatimages BOOLEAN NOT NULL,
homefeatimageslist TEXT NOT NULL,
storesearchbar BOOLEAN NOT NULL,
storecredits BOOLEAN NOT NULL,
storefeatlist BOOLEAN NOT NULL,
storegallery BOOLEAN NOT NULL,
getitemabout TEXT NOT NULL,
getitemlink TEXT NOT NULL,
getitembuttontext TEXT NOT NULL,
getitemicon TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE admins(
id INT NOT NULL AUTO_INCREMENT,
name TEXT NOT NULL,
did TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE contactusmodule(
id INT NOT NULL AUTO_INCREMENT,
tostext MEDIUMTEXT,
discordname TEXT NOT NULL,
discordlink TEXT NOT NULL,
email TEXT NOT NULL,
twitter MEDIUMTEXT,
youtube TEXT NOT NULL,
facebook TEXT NOT NULL,
twitch TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE sitestats(
id INT NOT NULL AUTO_INCREMENT,
members TEXT,
customers TEXT,
salesmade TEXT,
teammembers TEXT,
snrcustomers TEXT,
PRIMARY KEY (id));

CREATE TABLE reviews(
id INT NOT NULL AUTO_INCREMENT,
name TEXT NOT NULL,
stars TEXT NOT NULL,
comment TEXT NOT NULL,
profileimage TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE headerbuttons(
id INT NOT NULL AUTO_INCREMENT,
name TEXT NOT NULL,
link TEXT NOT NULL,
position INT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE gallerymodule(
id INT NOT NULL AUTO_INCREMENT,
image TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE storeitems(
id INT NOT NULL AUTO_INCREMENT,
name TEXT NOT NULL,
position INT NOT NULL,
onsale BOOLEAN DEFAULT 0,
price TEXT NOT NULL,
downloadlink TEXT NOT NULL,
description MEDIUMTEXT,
gallerylinks MEDIUMTEXT,
featurelist MEDIUMTEXT,
credits MEDIUMTEXT,
type TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE team(
id INT NOT NULL AUTO_INCREMENT,
name TEXT NOT NULL,
position INT NOT NULL,
title TEXT NOT NULL,
about TEXT NOT NULL,
profileimage TEXT NOT NULL,
PRIMARY KEY (id));

INSERT INTO sitesettings (id, name, color, currency, description, search, store, team, tos, contact, gallery, review, notfound, homepagestats, homepagesearch, homepagefeatimages, homefeatimageslist, storesearchbar, storecredits, storefeatlist, storegallery, getitemabout, getitemlink, getitembuttontext, getitemicon) VALUES (1, 'Red Circle Modifications', '#FF7070', '$', 'Welcome to Red Circle Modifications. This is a website that FAXES made. He found a random red circle image on his computer now it\'s the face and *soul* of this website. So yeah, welcome to Red Circle Modifications.', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 1, 1, 1, 1, 'Click the button below me! Or edit me.', 'https://faxes.zone/discord', 'Buy', 'discord');


INSERT INTO contactusmodule (id, tostext, discordname, discordlink, email, twitter, youtube, facebook, twitch) VALUES (1, 'My Terms of Service...', 'DootDoot#8505', 'https://faxes.zone/discord', 'dootdoot@example.com', 'https://twitter.com/FAXES_YT', 'https://faxes.zone/youtube', '-1', '-1');


INSERT INTO sitestats (id, members, customers, salesmade, teammembers, snrcustomers) VALUES (1, '999', '234', '29393', '16', '129');
INSERT INTO headerbuttons (name, link, position) VALUES ('Home', '/', 1);
INSERT INTO headerbuttons (name, link, position) VALUES ('Store', '/store', 5);
INSERT INTO headerbuttons (name, link, position) VALUES ('Team', '/team', 10);
INSERT INTO headerbuttons (name, link, position) VALUES ('Terms of Service', '/tos', 15);
INSERT INTO headerbuttons (name, link, position) VALUES ('Contact', '/contact', 20);
INSERT INTO headerbuttons (name, link, position) VALUES ('Search', '/search', 25);
INSERT INTO headerbuttons (name, link, position) VALUES ('Reviews', '/reviews', 30);
INSERT INTO headerbuttons (name, link, position) VALUES ('Gallery', '/gallery', 35);