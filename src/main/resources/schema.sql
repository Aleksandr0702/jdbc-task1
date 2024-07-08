create table if not exists netology.CUSTOMERS
(
    id serial primary key,
    name varchar not null,
    surname varchar not null,
    age int     not null,
    phone_number varchar not null
);


create table if not exists netology.ORDERS
(
    id serial primary key,
    date timestamp not null,
    customer_id int,
    product_name varchar not null,
    amount int not null,
    foreign key (customer_id) references netology.CUSTOMERS(id)
);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Dmitry', 'Ozhgibesov', 32, '+7-951-381-76-39');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Denis', 'Voronov', 27, '+7-999-777-66-44');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Renat', 'Trizin', 28, '+7-987-654-32-11');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Anna', 'Medoeva', 26, '+7-888-777-66-55');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Artem', 'Shiev', 42, '+7-123-456-78-99');

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'laptop', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'iphone', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'iphone', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'iphone', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'iphone', 2);