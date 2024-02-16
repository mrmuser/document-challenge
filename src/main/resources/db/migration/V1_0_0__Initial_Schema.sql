CREATE SEQUENCE hibernate_sequence START 1;

CREATE TABLE document
(
    id                             bigint NOT NULL PRIMARY KEY,
    text                           VARCHAR(1000),
    author_id                      bigint        NOT NULL

);

CREATE TABLE author
(
    id                             bigint NOT NULL PRIMARY KEY,
    name                           VARCHAR(200)
);


ALTER TABLE document
    ADD CONSTRAINT FK_document_author FOREIGN KEY (author_id) REFERENCES author (id);
