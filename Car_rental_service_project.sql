create database car_rental;
create table OFFICE( office_ID int primary key, 
 manager_ID int,
 manager_name varchar (20) , 
 office_name varchar (20), 
 location varchar (40), 
address varchar (40),
office_phno bigint );
insert into office values(92,12,"Mohan","nice car1","near to busstand", "4-5-8/5, mandi bazar,hyderabad",8555012459);
insert into office values(71,14,"Raju","soul car","Kukatpally", "8-3-960/A, park road,hyderabad",7993523852);
insert into office values(39,19,"Ravi","Apna car","Gachibowli", "3-9-290/2, Gandhi colony,hyderabad",7888781175);
insert into office values(45,11,"Hari","Sm cars","Ameerpet", "10-5-2, VidyaNagar,hyderabad",9493999468);
insert into office values(64,8,"Ashok","SS travels","Hitech city", "2/9/58,Janardhan Nagar,hyderabad",9246551381);
insert into office values(26,21,"Ajay","Multicabs","Dilsukhnagar", "9CX4,7 Tombs road,hyderabad",9989786977);
insert into office values(81,34,"Krishna","Classic Travels","Jubilee Hills", "8-2-682/A, Road No 12,hyderabad",9133100092);
insert into office values(11,16,"Ram","Car for share","LB Nagar","10-1-118/3, Ganga Apartments,hyderabad",9054500002);
insert into office values(15,19,"Chakri","Miles by trip","RTC X Roads", "45/24-R31-E, Sultan bazar,hyderabad",9550005780);
insert into office values(17,32,"Srujan","Blue Drive India","Secundarabad", "19-5-28/8, KishanBagh,Secundrabad",9393464600);
select * from office;
create table EMPLOYEE( emp_ID int primary key, fname varchar(20), mname varchar(20), lname varchar(20), office_ID int,
salary int,
gender varchar(20), address varchar(40),
age int, emp_phno bigint,
foreign key (office_ID) references OFFICE(office_ID)
);
insert into employee values (51,"Sravan","kumar","nagilla",92,70000, "male","3-4-5/1, uppal,hyderabad",35,6303256748);
insert into employee values(101,"Rajat","Kumar","Sharma",71,72000, "Male","Street No 1,Madhapur,hyderabad",32,6304414773);
insert into employee values(86,"Katta","Naga","Ritvik",39,65000, "Male","12-2-830/A/151,Mehdipatnam,hyderabad",26,9701458038); insert into employee values(54,"Manugonda","Raj","Kumar",45,80000, "Male","5-9-88/A/1,Public Gardens,hyderabad",28,9392423308);
insert into employee values(73,"Vemunuri","Praneeth","Reddy",64,90000, "Male","16-7-392/1,Malakpet,hyderabad",27,6302820365);
insert into employee values(22,"Hari","Kumar","Chopra",26,55000, "Male","SantoshNagar,hyderabad",30,9866236021);
insert into employee values(2,"Pentakota","Venkata","Siddharth",81,40000, "Male","4-32-1494/1,kukatpally,hyderabad",31,8688265505);
insert into employee values(15,"N","Srinivas","Rahul",11,75000, "Male","20-4-7,SriNagar Colony,hyderabad",33,9581304374); 
insert into employee values(37,"V","Ganga","Charitha",15,45000, "Female","Flat no 202,Pearls Residency,Gandipet",29,8309056805);
insert into employee values(40,"Aradhyula","Anjali","Devi",17,85000 ,"Female","APSRTCColony,hyderabad",24,7386152390);
insert into employee values(121,"N","Srinivas","Rahul",11,75000, "Male","20-4-7,SriNagar Colony,hyderabad",33,9581304374);
 insert into employee values(133,"V","Ganga","Charitha",15,45000, "Female","Flat no 202,Pearls Residency,Gandipet",29,8309056805);
insert into employee values(140,"Aradhyula","Anjali","Devi",17,85000, "Female","APSRTCColony,hyderabad",24,7386152390);
select * from employee;

create table CUSTOMER( customer_ID int primary key, fname varchar(20), lname varchar(20),
address varchar(40), gender varchar(20), phone_num bigint, email varchar(30)
);
create table INSURANCE( insurance_no varchar(20) primary key, insurance_type varchar(20)
);
create table VEHICLE( car_no varchar(20) primary key, car_model varchar(20), car_type varchar(20), car_color varchar(20), insurance_no varchar(20),
foreign key(insurance_no) references INSURANCE(insurance_no)
);
create table RESERVATION( reserve_ID int primary key, reserve_date date,
pickupdate date, return_date date, no_of_days int, pickup_location varchar(40), car_no varchar(20), office_ID int,
customer_ID int,
foreign key(car_no) references VEHICLE(car_no), foreign key(office_ID) references OFFICE(office_ID),
foreign key(customer_ID) references CUSTOMER(customer_ID)
);
create table PAYMENT( reserve_ID int, customer_ID int, total_price int,
payment_method varchar(20),
constraint composite_key primary key(reserve_ID,customer_ID), foreign key(reserve_ID) references RESERVATION(reserve_ID), foreign key(customer_ID) references CUSTOMER(customer_ID)
);
create table WORKS_ON( office_id int,
emp_id int, hours int,
foreign key(office_ID) references office(office_ID), foreign key(emp_ID) references employee(emp_ID),
constraint composite_key_2 primary key(office_ID,emp_ID));
insert into customer(customer_ID,fname,lname,address,gender,phone_num,email)
values(1465,"Om","Parmar","Road No 27,Hitech city,hyderabad","male",6303296865,"parmar2341@gmail.com");
insert into customer(customer_ID,fname,lname,address,gender,phone_num,email)
values(2134,"Sanjeev","Sreenivas","Airport Road,hyderabad","male",8555078030,"sanjeev145@gmail.com");
insert into customer(customer_ID,fname,lname,address,gender,phone_num,email)
values(5632,"Ritesh","Kumar","Kollur hyderabad","male",7855214697,"ritesh1234@gmail.com");
insert into customer(customer_ID,fname,lname,address,gender,phone_num,email)
values(3675,"Ramesh","babu","2-3- 4/A,gachibowli,hyderabad","male",6320155425,"ramesh@gmail.com");
insert into customer(customer_ID,fname,lname,address,gender,phone_num,email)
values(1987,"Rahul","verma","Street No 2,Ameerpet,hyderabad","male",7852146957,"rahul23@gmail.com");
insert into customer(customer_ID,fname,lname,address,gender,phone_num,email)
values(1234,"Jitesh","Singh","Road No 45,kukatpally,hyderabad","male",9852367418,"jiteshsinghr89@gmail.com");
insert into customer(customer_ID,fname,lname,address,gender,phone_num,email)
values(4650,"Manoj","Reddy","venkatadri towers,malakpet,hyderabad","male",7852146932,"manojr2@gmail.com");
insert into customer(customer_ID,fname,lname,address,gender,phone_num,email)
values(2677,"venkatesh","gupta","shine residency,kollur,hyderabad","male",7854126952,"venkygupta@gmail.com");
insert into customer(customer_ID,fname,lname,address,gender,phone_num,email)
values(3879,"V","Srinivas","banjara hills,hyderabad","male",7852146937,"srinsrinivas@gmail.com");
insert into customer(customer_ID,fname,lname,address,gender,phone_num,email)
values(6730,"Ajay","Kumar","gandipet,hyderabad","male",7855214569,"ajay1234@gmail.co m");
SELECT * FROM CUSTOMER;
insert into insurance(insurance_no,insurance_type) values("LIC53223","Full coverage");
insert into insurance(insurance_no,insurance_type) values("HDFC18972","Liability");
insert into insurance(insurance_no,insurance_type)
values("AIGIND91","Liabilty");
insert into insurance(insurance_no,insurance_type) values("ICICI18139","Full Coverage");
insert into insurance(insurance_no,insurance_type) values("MAXL8920","Liabilty");
insert into insurance(insurance_no,insurance_type) values("KTKM3U42","Full Coverage");
insert into insurance(insurance_no,insurance_type) values("SBIIND1429","Liability");
insert into insurance(insurance_no,insurance_type) values("PNBM20378","Full Coverage");
insert into insurance(insurance_no,insurance_type) values("RIL31034","Liability");
insert into insurance(insurance_no,insurance_type) values("SAHA9267","Full Coverage");
insert into insurance(insurance_no,insurance_type) values("SIL48092","Liability");
insert into insurance(insurance_no,insurance_type) values("AXA1289","Full Coverage");
select * from INSURANCE;
insert into vehicle(car_no,car_model,car_type,car_color,insurance_no) values("AP 21 BK 2267","Corolla","SUV","black","LIC53223");
insert into vehicle(car_no,car_model,car_type,car_color,insurance_no) values("KA 51 MA 1479","Creta","Sedan","blue","HDFC18972");
insert into vehicle(car_no,car_model,car_type,car_color,insurance_no) values("TS 23 EF 9992","Fortuner","Hatchback","red","AIGIND91");
 insert into vehicle(car_no,car_model,car_type,car_color,insurance_no) values("TS 12 AF 7835","Kia","Coupe","violet","ICICI18139");
insert into vehicle(car_no,car_model,car_type,car_color,insurance_no) values("TN 23 TU 3452","Nexon","Sedan","purple","MAXL8920"); 
insert into vehicle(car_no,car_model,car_type,car_color,insurance_no) values("AP 31 SA 5893","Mini","SUV","white","KTKM3U42");
insert into vehicle(car_no,car_model,car_type,car_color,insurance_no) values("KL 12 NS 4309","Innova","Bolero","yellow","SBIIND1429");
 insert into vehicle(car_no,car_model,car_type,car_color,insurance_no) values("MH 43 RU 7840","Swift","Sedan","silver","PNBM20378"); 
 insert into vehicle(car_no,car_model,car_type,car_color,insurance_no)
values("TS 24 SE 8284","Skoda","SUV","matte","RIL31034");
insert into vehicle(car_no,car_model,car_type,car_color,insurance_no) values("AP 34 DF 8937","BMW3","Subcompactcar","brown","SAHA9267");
 select * from vehicle;

insert into reservation values(129,'2023-02-12','2023-02-14', '2023-02-16',2,"Ameerpet","AP 21 BK 2267",11,1234);
insert into reservation values(157,'2023-03-07','2023-03-10', '2023-03-14',4,"Kukatpally","AP 21 BK 2267",15,1465);
insert into reservation values(237,'2023-03-21','2023-03-25', '2023-03-29',4,"Jubilee hills","AP 31 SA 5893",17,1987);
insert into reservation values(364,'2023-04-21','2023-04-22', '2023-04-24',2,"BanjaraHills","KA 51 MA 1479",26,2677);
insert into reservation values(318,'2023-05-01','2023-05-03', '2023-05-06',3,"Hitech city","KL 12 NS 4309",39,3675);
insert into reservation values(497,'2023-06-09','2023-06-16', '2023-06-19',3,"Shamshabad","TN 23 TU 3452",45,3879);
insert into reservation values(823,'2023-06-20','2023-06-22',
'2023-06-28',6,"Uppal","TN 23 TU 3452",64,4650);
insert into reservation values(741,'2023-07-07','2023-07-10', '2023-07-12',2,"Madhapur","TS 12 AF 7835",71,5632);
insert into reservation values(786,'2023-07-08','2023-07-11', '2023-07-15',4,"Somajiguda","TS 24 SE 8284",81,6730);
insert into reservation values(108,'2023-01-27','2023-01-29', '2023-02-04',6,"Mandi bazar","AP 34 DF 8937",92,2677);
insert into reservation values(159,'2023-03-07','2023-03-10', '2023-03-14',4,"Kukatpally","AP 21 BK 2267",15,5632);
insert into reservation values(231,'2023-03-21','2023-03-25', '2023-03-29',4,"Jubilee hills","AP 31 SA 5893",17,5632);
insert into reservation values(367,'2023-04-21','2023-04-22', '2023-04-24',2,"BanjaraHills","KA 51 MA 1479",26,5632);
select * from reservation;
insert into payment(reserve_ID,customer_ID,total_price,payment_method) values(129,1234,3000,"cash");
insert into payment(reserve_ID,customer_ID,total_price,payment_method) values(157,1465,2000,"cheque");
insert into payment(reserve_ID,customer_ID,total_price,payment_method) values(237,1987,3500,"credit_card");
insert into payment(reserve_ID,customer_ID,total_price,payment_method)
values(364,2677,4000,"cash");
insert into payment(reserve_ID,customer_ID,total_price,payment_method) values(318,3675,1500,"cash");
insert into payment(reserve_ID,customer_ID,total_price,payment_method) values(497,3879,4500,"cheque");
insert into payment(reserve_ID,customer_ID,total_price,payment_method) values(823,4650,5000,"credit_card");
insert into payment(reserve_ID,customer_ID,total_price,payment_method) values(741,5632,4000,"cheque");
insert into payment(reserve_ID,customer_ID,total_price,payment_method) values(786,6730,2500,"cash");
insert into payment(reserve_ID,customer_ID,total_price,payment_method) values(108,2134,5500,"cheque");
SELECT * FROM PAYMENT;
insert into works_on(office_ID,emp_ID,hours) values(11,2,6);
insert into works_on(office_ID,emp_ID,hours) values(15,15,8);
insert into works_on(office_ID,emp_ID,hours)
values(17,22,7);
insert into works_on(office_ID,emp_ID,hours) values(26,37,7);
insert into works_on(office_ID,emp_ID,hours) values(39,40,10);
insert into works_on(office_ID,emp_ID,hours) values(45,51,6);
insert into works_on(office_ID,emp_ID,hours) values(64,54,7);
insert into works_on(office_ID,emp_ID,hours) values(71,73,9);
insert into works_on(office_ID,emp_ID,hours) values(81,86,8);
insert into works_on(office_ID,emp_ID,hours) values(92,101,9);
insert into works_on(office_ID,emp_ID,hours) values(11,121,9);
insert into works_on(office_ID,emp_ID,hours) values(15,133,8);
insert into works_on(office_ID,emp_ID,hours) values(17,140,9);
select * from works_on;
use car_rental;
show tables;
