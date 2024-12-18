DROP TABLE IF EXISTS category cascade;
DROP TABLE IF EXISTS subcategory cascade;
DROP TABLE IF EXISTS campaign cascade;
DROP TABLE IF EXISTS contacts cascade;

-- Create new tables
CREATE TABLE category (
	category_id VARCHAR PRIMARY KEY,
	category VARCHAR NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR PRIMARY KEY,
	subcategory VARCHAR NOT NULL
);


CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT UNIQUE,
	company_name VARCHAR NOT NULL, 
	description VARCHAR NOT NULL,
	goal BIGINT NOT NULL,
	pledged BIGINT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES campaign(contact_id)
);



