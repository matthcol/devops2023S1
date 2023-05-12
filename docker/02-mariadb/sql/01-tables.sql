create table persons (
	id integer auto_increment,
	name varchar(150) not null,
	birthdate date null,
	constraint pk_persons primary key(id)
);

create table movies (
	id integer auto_increment,
	title varchar(300) not null,
	year smallint not null,
	duration smallint null,
	synopsis text null,
	poster_uri varchar(300) null,
	color varchar(20) null,
	pg varchar(15) null,
	director_id integer null,
	constraint pk_movies primary key(id),
	constraint uniq_movies UNIQUE(title, year),
	constraint chk_movies_year CHECK(year >= 1850)
);

create table play(
	movie_id integer not null,
	actor_id integer not null,
	role varchar(100),
	constraint pk_play primary key(movie_id, actor_id)
);

create table have_genre(
	movie_id integer not null,
	genre varchar(20) not null
);

alter table movies add constraint FK_MOVIES_DIRECTOR 
	FOREIGN KEY (director_id)
	references persons(id);
alter table play add constraint FK_PLAY_MOVIE 
	FOREIGN KEY (movie_id)
	references movies(id);
alter table play add constraint FK_PLAY_ACTOR 
	FOREIGN KEY (actor_id)
	references persons(id);
alter table have_genre add constraint FK_HAVE_GENRE 
	FOREIGN KEY (movie_id)
	references movies(id);


