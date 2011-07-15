create table albums
(
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   parent_id INTEGER,
   name VARCHAR(128),
   path VARCHAR(128)
);

create table pictures
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    album_id INTEGER,
    thumbnail VARCHAR(128),
    origin VARCHAR(128),
    created_at TIMESTAMP
);

INSERT INTO albums(name,path) VALUES('hp','/statics/images/hp');
