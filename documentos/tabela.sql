CREATE TABLE type_user (
    id SERIAL PRIMARY KEY,
    type_user BOOLEAN NOT NULL
);

CREATE TABLE interests (
    id SERIAL PRIMARY KEY,
    education BOOLEAN NOT NULL,
    social BOOLEAN NOT NULL,
    environment BOOLEAN NOT NULL
);

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    birthdate DATE,
    password VARCHAR(8) NOT NULL,
    email VARCHAR(20) NOT NULL,
    profile_picture_url VARCHAR NOT NULL,
    adress VARCHAR NOT NULL,
    id_type_user INTEGER,
    FOREIGN KEY (id_type_user) REFERENCES type_user (id)
);

CREATE TABLE recommended_opportunities (
    id SERIAL PRIMARY KEY,
    id_user INTEGER,
    id_interests INTEGER,
    FOREIGN KEY (id_user) REFERENCES "user" (id),
    FOREIGN KEY (id_interests) REFERENCES interests (id)
);

CREATE TABLE feed (
    id SERIAL PRIMARY KEY,
    post_content VARCHAR NOT NULL,
    post_image_url VARCHAR NOT NULL,
    likes INTEGER,
    created_at TIME,
    title VARCHAR,
    cost DECIMAL,
    duration DECIMAL,
    id_recommended_opportunities INTEGER,
    volunteer_quantity DECIMAL,
    FOREIGN KEY (id_recommended_opportunities) REFERENCES recommended_opportunities (id)
);
