do 
$$
begin
   for counter in 1..10000 loop
	insert into movies (title, year) values ('Dummy_' || counter, 2045);
   end loop;
end; 
$$
;
