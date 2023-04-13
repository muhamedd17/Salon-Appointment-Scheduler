--SQL script which will create the database and the tables

CREATE DATABASE salon;

CREATE TABLE customers();
CREATE TABLE appointments();
CREATE TABLE services();

ALTER TABLE customers ADD COLUMN customer_id SERIAL PRIMARY KEY;
ALTER TABLE customers ADD COLUMN phone VARCHAR(30) UNIQUE;
ALTER TABLE customers ADD COLUMN name VARCHAR(100);

ALTER TABLE appointments ADD COLUMN appointment_id SERIAL PRIMARY KEY;
ALTER TABLE appointments ADD COLUMN time VARCHAR(100);
ALTER TABLE appointments ADD COLUMN	service_id INT;
ALTER TABLE appointments ADD COLUMN	customer_id INT;

ALTER TABLE services ADD COLUMN service_id SERIAL PRIMARY KEY;
ALTER TABLE services ADD COLUMN name VARCHAR(100);

ALTER TABLE appointments ADD CONSTRAINT appointment_service FOREIGN KEY (service_id) REFERENCES services (service_id);
ALTER TABLE appointments ADD CONSTRAINT appointment_customer FOREIGN KEY (customer_id) REFERENCES customers (customer_id);

INSERT INTO services (name) VALUES ('cut');
INSERT INTO services (name) VALUES ('color');
INSERT INTO services (name) VALUES ('perm');
INSERT INTO services (name) VALUES ('style');
INSERT INTO services (name) VALUES ('trim');
