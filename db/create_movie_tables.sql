PRAGMA encoding = 'UTF-8';

DROP TABLE IF EXISTS movies;

DROP TABLE IF EXISTS characters;

DROP TABLE IF EXISTS actors;

DROP TABLE IF EXISTS genres;

DROP TABLE IF EXISTS companies;

DROP TABLE IF EXISTS countries;

DROP TABLE IF EXISTS languages;

DROP TABLE IF EXISTS moviecountries;

DROP TABLE IF EXISTS movielanguages;

DROP TABLE IF EXISTS moviecompanies;

CREATE TABLE movies (
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

CREATE TABLE companies (
    company_id INTEGER,
    company    VARCHAR (100),
    PRIMARY KEY (
        company_id
    )
);

CREATE TABLE moviecompanies (
    movie_id   INTEGER,
    company_id INTEGER,
    PRIMARY KEY (
        movie_id,
        company_id
    ),
    FOREIGN KEY (
        movie_id
    )
    REFERENCES movies_metadata,
    FOREIGN KEY (
        company_id
    )
    REFERENCES companies
);

CREATE TABLE countries (
    country      VARCHAR (100),
    country_code CHARACTER (2),
    PRIMARY KEY (
        country_code
    )
);

CREATE TABLE moviecountries (
    movie_id     INTEGER,
    country_code CHARACTER (2),
    PRIMARY KEY (
        movie_id,
        country_code
    ),
    FOREIGN KEY (
        movie_id
    )
    REFERENCES movies_metadata,
    FOREIGN KEY (
        country_code 
    )
    REFERENCES countries
);

CREATE TABLE languages (
    language      VARCHAR (30),
    language_code CHARACTER (2),
    PRIMARY KEY (
        language_code
    )
);

CREATE TABLE movielanguages (
    movie_id      INTEGER,
    language_code CHARACTER (2),
    PRIMARY KEY (
        movie_id,
        language_code
    ),
    FOREIGN KEY (
        movie_id
    )
    REFERENCES movies_metadata,
    FOREIGN KEY (
       	language_code
    )
    REFERENCES languages 
);


CREATE TABLE genres (
    movie_id INTEGER,
    genre    VARCHAR (20),
    PRIMARY KEY (
        movie_id,
        genre
    ),
    FOREIGN KEY (
        movie_id
    )
    REFERENCES movies_metadata
);

CREATE TABLE actors (
    actor_id INTEGER,
    actor     VARCHAR (50),
    PRIMARY KEY (
        actor_id
    )
);

CREATE TABLE characters (
    movie_id  INTEGER,
    actor_id  INTEGER,
    character VARCHAR (150),
    PRIMARY KEY (
        movie_id,
        actor_id,
        character
    ),
    FOREIGN KEY (
        movie_id
    )
    REFERENCES movies_metadata,
    FOREIGN KEY (
        actor_id
    )
    REFERENCES actors
);
