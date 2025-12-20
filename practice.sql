create table customers(
  customer_id int2 primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  email varchar(100) unique not null,
  city varchar(50),
  country varchar(50),
  registration_date date default current_date
);

create table books(
  book_id int2 primary key,
  title varchar(200) not null,
  author varchar(100) not null,
  genre varchar(50) not null,
  price numeric(10,2) not null check (price>0),
  publication_year int2,
  stock_quantity int check (stock_quantity>0)
)

create table orders(
  order_id int2 primary key,
  customer_id int2 references customers(customer_id),
  book_id int2 references books(book_id),
  order_date date default current_date,
  quantity int2 check (quantity>0),
  total_amount numeric(10,2) check (total_amount>0)
)

