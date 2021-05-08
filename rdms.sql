-- 1. Data Definition Language (DDL)
-- Table directors
drop table directors cascade;

create table directors (
	director_id serial primary key,
	first_name varchar(30),
	last_name varchar(30) not null,
	date_of_birth date,
	nationality varchar(20)
);

-- Insert into directors (INSERT+INTO+directors+script)
	
select * from directors

-- table actors
create table actors (
	actor_id serial primary key,
	first_name varchar(30),
	last_name varchar(30),
	gender char (1),
	date_of_birth date
);

drop table actors cascade;

-- insert into actors (INSERT+INTO+actors+script)

-- table movies
-- foreign key
create table movies (
	movie_id serial primary key,
	movie_name varchar(50) not null,
	movie_length int,
	movie_lang varchar(20),
	release_date date,
	age_certificate varchar(5),
	director_id int references directors (director_id)
);

drop table movies;

-- insert into movies (INSERT+INTO+movies+script)

select * from movies


-- table movie_revenues
create table movie_revenues(
	revenue_id serial primary key,
	movie_id int references movies (movie_id),
	domestic_takings numeric(6,2),
	international_takings numeric(6,2)
);

-- insert into movie_revenues (INSERT+INTO+movie_revenues+script)

select * from movie_revenues;

-- table movies_actors
-- junction table
create table movies_actors (
	movie_id int references movies (movie_id),
	actor_id int references actors (actor_id),
	primary key (movie_id, actor_id)
);

drop table movie_actors;

-- insert into movies_actors (INSERT+INTO+movies_actors+script)

select * from movies_actors