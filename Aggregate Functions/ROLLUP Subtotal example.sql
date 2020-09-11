/*
+----------------------------------------------------------------------------------+
| PT-BR: Exemplo sobre como criar subtotais usando a função ROLLUP                 |
| EN-US: Example on creating subtotals usin ROLLUP function                        |
| Author: Cesar Castro                                                             |
+----------------------------------------------------------------------------------+
*/

create table products (
product_id number not null,
product_name varchar2(100) not null,
product_value number(5,2) not null,
product_category varchar2(20) not null
);
alter table products
  add constraint pk_product primary key (product_id);


insert into products (product_id, product_name, product_value, product_category)
values(1, 'T-shirt', 10.99, 'clothing');
insert into products (product_id, product_name, product_value, product_category)
values(2, 'Shorts', 8.99, 'clothing');
insert into products (product_id, product_name, product_value, product_category)
values(3, 'Shoes', 20.50, 'clothing');
insert into products (product_id, product_name, product_value, product_category)
values(4, 'Rice', 1.99, 'food');
insert into products (product_id, product_name, product_value, product_category)
values(5, 'Popcorn', 0.99, 'food');
insert into products (product_id, product_name, product_value, product_category)
values(6, 'Filet Steak', 3.99, 'food');

-- normal selection
select * from products;

-- selection grouping by category
select p.product_category, sum(p.product_value) as total from products p group by p.product_category;

-- selection grouping by category with subtotais using rollup function
select case
         when p.product_category is null and p.product_name is null then
          'Total'
         when p.product_category is not null and p.product_name is null then
          'Subtotal - ' || p.product_category
         else
          p.product_category
       end categoria,
       sum(p.product_value) as total
  from products p
 group by rollup(p.product_category, p.product_name);
