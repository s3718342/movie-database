PRAGMA encoding = 'UTF-8';
PRAGMA foreign_keys = ON;


DROP TABLE IF EXISTS moviecompany;

DROP TABLE IF EXISTS moviecountry;

DROP TABLE IF EXISTS movielanguage;

DROP TABLE IF EXISTS genre;

DROP TABLE IF EXISTS character;

DROP TABLE IF EXISTS movie;

DROP TABLE IF EXISTS company;

DROP TABLE IF EXISTS country;

DROP TABLE IF EXISTS language;

DROP TABLE IF EXISTS actor;

DROP TABLE IF EXISTS moviecompany;

CREATE TABLE movie (
    movie_id     INTEGER,
    title        VARCHAR (120) NOT NULL,
    overview     TEXT,
    release_date DATE CHECK (date(release_date) < date('now')),
    vote_average REAL CHECK (vote_average >= 0),
    runtime      INTEGER CHECK (runtime >= 0),
    budget       INTEGER CHECK (budget >= 0),
    revenue      INTEGER,
    PRIMARY KEY (
        movie_id
    )
);

CREATE TABLE company (
    company_id INTEGER NOT NULL,
    company_name   VARCHAR (100) NOT NULL,
    PRIMARY KEY (
        company_id
    )
);

CREATE TABLE moviecompany (
    movie_id   INTEGER NOT NULL,
    company_id INTEGER NOT NULL,
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
    country_name      VARCHAR (100) NOT NULL,
    country_id CHARACTER (2) NOT NULL,
    PRIMARY KEY (
        country_id
    )
);

CREATE TABLE moviecountry (
    movie_id     INTEGER NOT NULL,
    country_id CHARACTER (2) NOT NULL,
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
    language_name     VARCHAR (30) NOT NULL,
    language_id CHARACTER (2) NOT NULL,
    PRIMARY KEY (
        language_id
    )
);

CREATE TABLE movielanguage (
    movie_id      INTEGER NOT NULL,
    language_id CHARACTER (2) NOT NULL,
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
    movie_id INTEGER NOT NULL,
    genre_name    VARCHAR (20) NOT NULL,
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
    actor_id INTEGER NOT NULL,
    actor_name     VARCHAR (50) NOT NULL,
    PRIMARY KEY (
        actor_id
    )
);

CREATE TABLE character (
    movie_id  INTEGER NOT NULL,
    actor_id  INTEGER NOT NULL,
    character_name VARCHAR (150) NOT NULL,
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
