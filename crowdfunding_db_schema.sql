CREATE TABLE Category (
  id varchar NOT NULL PRIMARY KEY,
  category VARCHAR NOT NULL
);

CREATE TABLE Subcategory (
  id varchar NOT NULL PRIMARY KEY,
  subcategory VARCHAR NOT NULL
);

CREATE TABLE Contacts (
  id Int NOT NULL PRIMARY KEY,
  first_name VARCHAR NOT NULL,
  last_name varchar NOT NULL,
  email varchar Not NULL

);

CREATE TABLE Campaign (
  id Int NOT NULL PRIMARY KEY,
  contact_id int NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES Contacts(id),
  company_name varchar NOT Null,
  description varchar NOT NULL, 
  goal decimal NOT Null,
  pledged decimal NOT NULl,
  outcome varchar NOT NULL,
  backers_count Int NOT NUll,
  country varchar NOT NUll,
  currency varchar NOT Null,
  launch_date date NOT NULl,
  end_date date NOT NUll,
  category_id varchar NOT NUll,
  FOREIGN KEY (category_id) REFERENCES Category(id),
  subcategory_id varchar Not NULL,
  FOREIGN KEY (subcategory_id) REFERENCES Subcategory(id)
);

