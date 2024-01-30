CREATE TABLE directors(
	id serial primary key,
	name varchar(255),
	country varchar(255)
);

CREATE TABLE stars(
	id serial primary key,
	name varchar(255),
	dob date
);

CREATE TABLE writers(
	id serial primary key,
	name varchar(255),
	email varchar(255)
);

CREATE TABLE films(
	id serial primary key,
	title varchar(255),
	released_year integer,
	genre varchar(50),
	score integer,
	director_fk_id integer,
	star_fk_id integer,
	writer_fk_id integer,
	CONSTRAINT director_id FOREIGN KEY (director_fk_id) REFERENCES directors(id),
	CONSTRAINT star_id FOREIGN KEY (star_fk_id) REFERENCES stars(id),
	CONSTRAINT writer_id FOREIGN KEY (writer_fk_id) REFERENCES writers(id)
);

INSERT INTO directors (name, country)
VALUES
	('Stanley Kubrick', 'USA'),
	('George Lucas', 'USA'),
	('Robert Mulligan', 'USA'),
	('James Cameron', 'Canada'),
	('David Lean', 'UK'),
	('Anthony Mann', 'USA'),
	('Theodoros Angelopoulos', 'Greece'),
	('Paul Verhoeven', 'Netherlands'),
	('Krzysztof Kieslowski', 'Poland'),
	('Jean-Paul Rappeneau', 'France');
	
SET datestyle = 'DMY';
INSERT INTO stars (name, dob)
VALUES
	('Keir Dullea', '30/05/1936'),
	('Mark Hamill', '25/09/1951'),
	('Gregory Peck', '05/04/1916'),
	('Leonardo DiCaprio', '11/11/1974'),
	('Julie Christie', '14/04/1940'),
	('Charlton Heston', '04/10/1923'),
	('Manos Katrakis', '14/08/1908'),
	('Rutger Hauer', '23/01/1944'),
	('Juliette Binoche', '09/03/1964'),
	('Gerard Depardieu', '27/12/1948');
	
INSERT INTO writers (name, email)
VALUES
	('Arthur C Clarke', 'arthur@clarke.com'),
	('George Lucas', 'george@lucas.com'),
	('Harper Lee', 'harper@lee.com'),
	('James Cameron', 'james@cameron.com'),
	('Boris Pasternak', 'boris@boris.com'),
	('Frederick Frank', 'fred@frank.com'),
	('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
	('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
	('Krzysztof Kieslowsk', 'email@email.com'),
	('Edmond Rostand', 'edmond@rostand.com');
	
INSERT INTO films(title, released_year, genre, score, director_fk_id, star_fk_id, writer_fk_id)
VALUES
	('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
	('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
	('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
	('Titanic', 1997, 'Romance', 5, 4, 4, 4),
	('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
	('El Cid', 1961, 'Historical', 6, 6, 6, 6),
	('Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
	('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
	('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
	('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10);