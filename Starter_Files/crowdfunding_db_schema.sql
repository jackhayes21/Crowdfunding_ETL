--drop table contacts cascade; 

create table contacts (
contact_id int not null,
first_name varchar not null, 
last_name varchar not null, 
email varchar not null,
primary key (contact_id) 
);

--drop table campaign cascade;

create table campaign (
cf_id int not null,
contact_id int not null, 
company_name varchar not null, 
description varchar not null, 
goal int not null, 
pledged int not null,
outcome varchar not null, 
backers_count int not null,
country varchar not null,
currency varchar not null,
launched_date date not null,
end_date date not null,
category_id varchar not null, 
subcategory_id varchar not null,
foreign key (contact_id) references contacts2 (contact_id),
foreign key (subcategory_id) references subcategory (subcategory_id),
foreign key (category_id) references category (category_id)
);

--drop table subcategory cascade; 

create table subcategory (
subcategory_id varchar not null,
subcategory varchar not null,
primary key (subcategory_id)
);

--drop table category cascade;

create table category (
category_id varchar not null,
category varchar not null,
primary key (category_id)
);

select * 
from contacts;

select *
from campaign c ;

select * 
from subcategory s;

select * 
from category c ;