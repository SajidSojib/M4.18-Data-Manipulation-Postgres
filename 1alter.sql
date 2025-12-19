-- -- Alter
--     1. rename table
--     2. modify datatypes
--     3. add/drop column
--     4. rename column
--     5. setting default values
--     6. add/drop constraints

create table employee(id serial, name varchar(50), age smallint);

-- rename table
alter table employee rename to teachers;

-- add column
alter table teachers add column email varchar(80);

-- delete column
alter table teachers drop column email;

-- rename a column
alter table teachers
  rename column id to user_id;

-- modify existing constraint
alter table 
  teachers 
alter column name
  type varchar(100);

-- add constrain
alter table teachers
  alter column email set not null;

-- drop constraint
alter table teachers
  alter column email drop not null;

-- set default value
insert into teachers(name, age) values('sajid', 20);
alter table teachers alter column email set default 'test@gmail.com';

-- drop default value
alter table teachers alter column email drop default;



-- add constraint (table level)
alter table teachers 
  add constraint unique_teachers_email unique(email);

alter table teachers 
  add constraint pk_teachers_email primary key(user_id);

-- drop constraint (table level)
alter table teachers 
  drop constraint unique_teachers_email;



