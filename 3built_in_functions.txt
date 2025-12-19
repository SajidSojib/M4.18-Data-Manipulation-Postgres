-- Scaler Function
  -- upper, lower, concat, length

-- Aggregate functions
  -- avg, max, min, sum, count


-- upper
select upper(first_name) as first_name_in_uppercase, first_name from students2;

-- lower
select lower(first_name) as first_name_in_lowercase, first_name from students2;

-- concat
select concat(first_name,' ',last_name) as "Full Name" from students2;

-- length
select length(first_name) as first_name_length, first_name from students2;








