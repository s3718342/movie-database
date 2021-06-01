PRAGMA encoding = 'UTF-8';
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS movie;

DROP TABLE IF EXISTS character;

DROP TABLE IF EXISTS actor;

DROP TABLE IF EXISTS genre;

DROP TABLE IF EXISTS company;

DROP TABLE IF EXISTS country;

DROP TABLE IF EXISTS language;

DROP TABLE IF EXISTS moviecountry;

DROP TABLE IF EXISTS movielanguage;

DROP TABLE IF EXISTS moviecompany;

CREATE TABLE movie (
    movie_id     INTEGER,
    title        VARCHAR (120),
    overview     VARCHAR (500),
    release_date DATE,
    vote_average REAL,
    runtime      INTEGER,
    budget       INTEGER,
    revenue      INTEGER,
    PRIMARY KEY (
        movie_id
    )
);

CREATE TABLE company (
    company_id INTEGER,
    company_name   VARCHAR (100),
    PRIMARY KEY (
        company_id
    )
);

CREATE TABLE moviecompany (
    movie_id   INTEGER,
    company_id INTEGER,
    PRIMARY KEY (
        movie_id,
        company_id
    ),
    FOREIGN KEY (
        movie_id
    )
    REFERENCES movie,
    FOREIGN KEY (
        company_id
    )
    REFERENCES company
);

CREATE TABLE country (
    country_name      VARCHAR (100),
    country_id CHARACTER (2),
    PRIMARY KEY (
        country_id
    )
);

CREATE TABLE moviecountry (
    movie_id     INTEGER,
    country_id CHARACTER (2),
    PRIMARY KEY (
        movie_id,
        country_id
    ),
    FOREIGN KEY (
        movie_id
    )
    REFERENCES movie,
    FOREIGN KEY (
        country_id 
    )
    REFERENCES country
);

CREATE TABLE language (
    language_name     VARCHAR (30),
    language_id CHARACTER (2),
    PRIMARY KEY (
        language_id
    )
);

CREATE TABLE movielanguage (
    movie_id      INTEGER,
    language_id CHARACTER (2),
    PRIMARY KEY (
        movie_id,
        language_id 
    ),
    FOREIGN KEY (
        movie_id
    )
    REFERENCES movie,
    FOREIGN KEY (
       	language_id 
    )
    REFERENCES language
);


CREATE TABLE genre (
    movie_id INTEGER,
    genre_name    VARCHAR (20),
    PRIMARY KEY (
        movie_id,
        genre_name
    ),
    FOREIGN KEY (
        movie_id
    )
    REFERENCES movie
);

CREATE TABLE actor (
    actor_id INTEGER,
    actor_name     VARCHAR (50),
    PRIMARY KEY (
        actor_id
    )
);

CREATE TABLE character (
    movie_id  INTEGER,
    actor_id  INTEGER,
    character_name VARCHAR (150),
    PRIMARY KEY (
        movie_id,
        actor_id,
        character_name
    ),
    FOREIGN KEY (
        movie_id
    )
    REFERENCES movie,
    FOREIGN KEY (
        actor_id
    )
    REFERENCES actor
);
