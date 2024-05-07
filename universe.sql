CREATE DATABASE universe;

\c universe;

create table galaxy (
  galaxy_id serial not null primary key,
  name varchar(40) not null unique,
  description text,
  has_life boolean, 
  is_spherical boolean, 
  age_in_millions_of_years numeric,
  planet_types varchar(40),
  galaxy_types varchar(40), 
  distance_from_earth_light_years int
);

insert into galaxy (name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, galaxy_types, distance_from_earth_light_years)
values ('name', 'description', true, true, 100000, '', '', 19999999),
('name1', 'description1', true, true, 100000, '', '', 19999999),
('name2', 'description2', true, true, 100000, '', '', 19999999),
('nam3', 'description3', true, true, 100000, '', '', 19999999),
('name4', 'description4', true, true, 100000, '', '', 19999999),
('name5', 'description5', true, true, 100000, '', '', 19999999),
('name6', 'description6', true, true, 100000, '', '', 19999999);

select * from galaxy;

create table star (
  star_id serial not null primary key,
  name varchar(40) not null unique,
  description text,
  has_life boolean, 
  is_spherical boolean, 
  age_in_millions_of_years numeric,
  distance_from_earth_light_years int,
  galaxy_id int not null,
  constraint fk_galaxy FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id)
);

insert into star (name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth_light_years, galaxy_id)
values ('name', 'description', true, true, 100000, 19999999, 1),
('name1', 'description1', true, true, 100000, 19999999, 2),
('name2', 'description2', true, true, 100000, 19999999, 3),
('nam3', 'description3', true, true, 100000, 19999999, 4),
('name4', 'description4', true, true, 100000, 19999999, 5),
('name5', 'description5', true, true, 100000, 19999999, 6),
('name6', 'description6', true, true, 100000, 19999999, 7);

select * from star;

create table planet (
  planet_id serial not null primary key,
  name varchar(40) not null unique,
  description text,
  has_life boolean, 
  is_spherical boolean, 
  age_in_millions_of_years numeric,
  distance_from_earth_light_years int,
  star_id int not null,
  constraint fk_star FOREIGN KEY(star_id) REFERENCES star(star_id)
);

insert into planet (name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth_light_years, star_id)
values ('name', 'description', true, true, 100000, 19999999, 1),
('name1', 'description1', true, true, 100000, 19999999, 2),
('name2', 'description2', true, true, 100000, 19999999, 3),
('nam3', 'description3', true, true, 100000, 19999999, 4),
('name4', 'description4', true, true, 100000, 19999999, 5),
('name5', 'description5', true, true, 100000, 19999999, 6),
('name6', 'description6', true, true, 100000, 19999999, 7),
('name7', 'description', true, true, 100000, 19999999, 1),
('name8', 'description1', true, true, 100000, 19999999, 2),
('name9', 'description2', true, true, 100000, 19999999, 3),
('nam10', 'description3', true, true, 100000, 19999999, 4),
('name11', 'description4', true, true, 100000, 19999999, 5),
('name12', 'description5', true, true, 100000, 19999999, 6),
('name13', 'description6', true, true, 100000, 19999999, 7),
('nam14', 'description', true, true, 100000, 19999999, 1),
('name15', 'description1', true, true, 100000, 19999999, 2),
('name16', 'description2', true, true, 100000, 19999999, 3),
('nam17', 'description3', true, true, 100000, 19999999, 4),
('name18', 'description4', true, true, 100000, 19999999, 5),
('name19', 'description5', true, true, 100000, 19999999, 6),
('name20', 'description6', true, true, 100000, 19999999, 7);

select * from planet;

create table moon (
  moon_id serial not null primary key,
  name varchar(40) not null unique,
  description text,
  has_life boolean, 
  is_spherical boolean, 
  age_in_millions_of_years numeric,
  distance_from_earth_light_years int,
  planet_id int not null,
  constraint fk_star FOREIGN KEY(planet_id) REFERENCES planet(planet_id)
);

insert into moon (name, description, has_life, is_spherical, age_in_millions_of_years, distance_from_earth_light_years, planet_id)
values ('name', 'description', true, true, 100000, 19999999, 1),
('name1', 'description1', true, true, 100000, 19999999, 2),
('name2', 'description2', true, true, 100000, 19999999, 3),
('nam3', 'description3', true, true, 100000, 19999999, 4),
('name4', 'description4', true, true, 100000, 19999999, 5),
('name5', 'description5', true, true, 100000, 19999999, 6),
('name6', 'description6', true, true, 100000, 19999999, 7),
('name7', 'description', true, true, 100000, 19999999, 1),
('name8', 'description1', true, true, 100000, 19999999, 2),
('name9', 'description2', true, true, 100000, 19999999, 3),
('nam10', 'description3', true, true, 100000, 19999999, 4),
('name11', 'description4', true, true, 100000, 19999999, 5),
('name12', 'description5', true, true, 100000, 19999999, 6),
('name13', 'description6', true, true, 100000, 19999999, 7),
('nam14', 'description', true, true, 100000, 19999999, 1),
('name15', 'description1', true, true, 100000, 19999999, 2),
('name16', 'description2', true, true, 100000, 19999999, 3),
('nam17', 'description3', true, true, 100000, 19999999, 4),
('name18', 'description4', true, true, 100000, 19999999, 5),
('name19', 'description5', true, true, 100000, 19999999, 6),
('name20', 'description6', true, true, 100000, 19999999, 7);

create table starcraft (
  starcraft_id serial not null primary key,
  name varchar(40) not null unique,
  description text,
  has_life boolean, 
  is_spherical boolean, 
  age_in_years numeric,
  distance_from_earth_light_years int,
  galaxy_id int not null,
  constraint fk_galaxy FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id)
);


insert into starcraft (name, description, has_life, is_spherical, age_in_years, distance_from_earth_light_years, galaxy_id)
values ('name', 'description', true, true, 10, 1, 1),
('name1', 'description1', true, true, 10, 1, 2),
('name2', 'description2', true, true, 10, 1, 3),
('nam3', 'description3', true, true, 10, 1, 4),
('name4', 'description4', true, true, 10, 1, 5),
('name5', 'description5', true, true, 10, 1, 6),
('name6', 'description6', true, true, 10, 1, 7);


ALTER TABLE moon RENAME CONSTRAINT fk_star TO fk_planet;
