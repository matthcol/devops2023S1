select setval('persons_id_seq', max(id)) from persons;
select setval('movies_id_seq', max(id)) from movies;
