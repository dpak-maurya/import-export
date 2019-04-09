create table Payments(Pay_Id varchar(20) primary key,
					  Pay_Mode varchar(20),
                      Pay_Date date,
                      Cid varchar(20) references Customer
                      on delete cascade
                      on update cascade);
					

insert into Payments values('P123456','Cash','2002-02-25','C136871');
insert into Payments values('P126987','NetBanking','2012-03-21','C236587');
insert into Payments values('P169324','DebitCard','2014-04-07','C129874');
insert into Payments values('P698746','Cash','2015-05-10','C356987');
insert into Payments values('P789654','Cheque','2013-06-18','C123698');
insert into Payments values('P346987','Cheque','2014-08-25','C145698');
insert into Payments values('P487963','Cash','2016-06-20','C269871');
insert into Payments values('P654789','Cheque','2019-06-25','C269871');
insert into Payments values('P136987','Cash','2014-09-16','C136871');
insert into Payments values('P123652','DebitCard','2015-11-25','C236587');
insert into Payments values('P987254','Cheque','2016-02-09','C129874');
insert into Payments values('P863149','NetBanking','2017-01-06','C356987');
insert into Payments values('P741364','Cheque','2018-07-12','C123698');
insert into Payments values('P896314','DebitCard','2013-04-12','C269871');
insert into Payments values('P736458','Cheque','2018-06-11','C136871');
insert into Payments values('P736451','Cheque','2017-04-11','C136871');



create table Customer(Cid varchar(20) primary key,
					  C_Name varchar(20),
                      Company_Name varchar(20),
                      City varchar(20));
                      
insert into Customer values('C136871','Custname1','ABC Company','City1');
insert into Customer values('C236587','Custname2','DEF Company','City2');
insert into Customer values('C129874','Custname3','ASD Company','City3');
insert into Customer values('C356987','Custname4','KJH Company','City1');
insert into Customer values('C123698','Custname5','OIU Company','City3');
insert into Customer values('C145698','Custname6','SRE Company','City2');
insert into Customer values('C269871','Custname7','QWE Company','City4');
insert into Customer values('C123974','Custname8','YUI Company','City6');



create table Customer_City(City varchar(20) primary key references Customer
							on delete cascade
                            on update cascade,
                            State varchar(20),
                            Country varchar(20));

                            
insert into Customer_City values('City1','State1','Country1');
insert into Customer_City values('City2','State2','Country2');
insert into Customer_City values('City3','State3','Country3');
insert into Customer_City values('City4','State2','Country4');
insert into Customer_City values('City5','State5','Country5');
insert into Customer_City values('City6','State4','Country6');
insert into Customer_City values('City7','State2','Country7');
insert into Customer_City values('City8','State6','Country8');


                            
create table Customer_Mobile(Cid varchar(20) primary key references Customer
								on delete cascade
                                on update cascade,
                              MobileNo numeric(10,0));  
                              
                     
insert into Customer_Mobile values('C136871','8987653214');
insert into Customer_Mobile values('C236587','8697451236');
insert into Customer_Mobile values('C129874','8974563258');
insert into Customer_Mobile values('C356987','9865123697');
insert into Customer_Mobile values('C123698','9863214587');
insert into Customer_Mobile values('C145698','8963541287');
insert into Customer_Mobile values('C269871','8645123987');
insert into Customer_Mobile values('C123974','9875030145');
							               
create table Order_(Order_Id varchar(20) primary key,
					Order_Type varchar(20),
                    Cid varchar(20) references Customer
                    on delete cascade 
                    on update cascade);
                    
insert into Order_ values('Od123654','Odtype1','C136871');
insert into Order_ values('Od458997','Odtype2','C236587');
insert into Order_ values('Od236598','Odtype1','C129874');
insert into Order_ values('Od124578','Odtype2','C356987');
insert into Order_ values('Od639874','Odtype3','C123698');
insert into Order_ values('Od365412','Odtype5','C145698');
insert into Order_ values('Od365458','Odtype4','C269871');
insert into Order_ values('Od265489','Odtype3','C269871');
insert into Order_ values('Od268936','Odtype2','C136871');
insert into Order_ values('Od346987','Odtype1','C236587');
insert into Order_ values('Od459632','Odtype3','C129874');
insert into Order_ values('Od147854','Odtype4','C356987');
insert into Order_ values('Od125698','Odtype5','C123698');
insert into Order_ values('Od369874','Odtype3','C123698');
insert into Order_ values('Od789634','Odtype4','C136871');
insert into Order_ values('Od145632','Odtype1','C269871');


                    
create table Import_State(State varchar(20) primary key,
						  Country varchar(20));

insert into Import_State values ('state1','Country1');
insert into Import_State values ('state2','Country2');
insert into Import_State values ('state3','Country3');
insert into Import_State values ('state4','Country4');



create table Import_(Imp_Id varchar(20) primary key,
					 Item varchar(20),
                     Quantity int,
                     Date_ date,
                     Order_Id varchar(20) references Order_
                     on delete cascade
                     on update cascade,
                     State varchar(20) references Import_State
                     on delete cascade
                     on update cascade,
                     Invoice_No varchar(20) references Invoice
                     on delete cascade
                     on update cascade,
                     Ship_No varchar(20) references Ship 
                     on delete cascade
                     on update cascade);
					

 
 
insert into Import_ values('Impid369852','Item1',265,'2002-03-29','Od123654','State1','Invoice132','Shipno1');
insert into Import_ values('Impid126874','Item2',659,'2012-04-09','Od458997','State2','Invoice139','Shipno2');
insert into Import_ values('Impid123658','Item3',789,'2014-05-19','Od236598','State3','Invoice148','Shipno3');
insert into Import_ values('Impid126986','Item2',656,'2015-06-19','Od124578','State4','Invoice147','Shipno4');
insert into Import_ values('Impid145896','Item2',346,'2014-09-16','Od268936','State2','Invoice325','Shipno5');
insert into Import_ values('Impid345852','Item3',458,'2015-11-25','Od346987','State3','Invoice879','Shipno6');
insert into Import_ values('Impid145879','Item4',789,'2016-02-09','Od459632','State4','Invioce213','Shipno7');
insert into Import_ values('Impid365487','Item1',763,'2017-01-06','Od147854','State1','Invoice456','Shipno8');





           
create table Export_State(State varchar(20) primary key,
						  Country varchar(20));
   
insert into Export_State values('State5','Country5');
insert into Export_State values('State6','Country6');
insert into Export_State values('State7','Country7');
insert into Export_State values('State8','Country8');                       
	
                          
             
             
create table Export_(Exp_Id varchar(20) primary key,
					 Item varchar(20) ,
                     Date_ date,
                     Quantity int,
                     Order_Id varchar(20) references Order_
                     on delete cascade
                     on update cascade,
                     State varchar(20) references Export_State
                     on delete cascade
                     on update cascade,
                     Invoice_No varchar(20) references Invoice
                     on delete cascade
                     on update cascade,
                     Ship_No varchar(20) references Ship
                     on delete cascade
                     on update cascade);
                     
                     
insert into Export_ values('Expid158746','Item5','2013-07-06',896,'Od639874','State5','Invoice896','Shipno9');
insert into Export_ values('Expid265841','Item2','2014-09-09',369,'Od365412','State6','Invoice356','Shipno10');
insert into Export_ values('Expid136985','Item6','2016-07-29',369,'Od365458','State7','Invoice489','Shipno11');
insert into Export_ values('Expid148796','Item1','2019-07-17',789,'Od265489','State8','Invoice336','Shipno12');
insert into Export_ values('Expid147896','Item2','2018-07-12',896,'Od125698','State5','Invoice346','Shipno13');
insert into Export_ values('Expid445568','Item6','2013-04-12',789,'Od369874','State6','Invoice316','Shipno14');
insert into Export_ values('Expid122369','Item4','2018-06-11',145,'Od789634','State7','Invoice789','Shipno15');
insert into Export_ values('Expid789643','Item1','2017-04-11',364,'Od145632','State8','Invoice246','Shipno16');




create table Tax_Item(Item varchar(20),
					  Tax_Rate numeric(3,2),
                      primary key(Item));
                      
insert into Tax_Item values('Item1',6.36);
insert into Tax_Item values('Item2',7.26);
insert into Tax_Item values('Item3',8.14);
insert into Tax_Item values('Item4',9.36);
insert into Tax_Item values('Item5',8.23);
insert into Tax_Item values('Item6',9.23);
                      
                      
create table Tax(Tax_Id varchar(20) primary key,
				 Item varchar(20),
                 Weight int,
                 Order_Id varchar(20)  references Order_
                 on delete cascade 
                 on update cascade,
                 foreign key(Item) references Tax_Item(Item)
                 on delete cascade
                 on update cascade
);
                 
                 
insert into Tax values('Tid123678','Item1',265,'Od123654');
insert into Tax values('Tid159863','Item2',659,'Od458997');
insert into Tax values('Tid125987','Item3',789,'Od236598');
insert into Tax values('Tid123657','Item4',656,'Od124578');
insert into Tax values('Tid178963','Item5',896,'Od639874');
insert into Tax values('Tid145987','Item2',369,'Od365412');
insert into Tax values('Tid132685','Item6',369,'Od365458');
insert into Tax values('Tid147896','Item1',789,'Od265489');
insert into Tax values('Tid569874','Item2',346,'Od268936');
insert into Tax values('Tid136548','Item3',458,'Od346987');
insert into Tax values('Tid133698','Item4',789,'Od459632');
insert into Tax values('Tid132649','Item1',763,'Od147854');
insert into Tax values('Tid789632','Item2',896,'Od125698');
insert into Tax values('Tid148632','Item6',789,'Od369874');
insert into Tax values('Tid365879','Item4',145,'Od789634');
insert into Tax values('Tid147526','Item1',364,'Od145632');


create table Port_(Port_Code varchar(20) primary key,
					Country varchar(20),
                    Port_Name varchar(20)                    );


insert into Port_ values('Port213','Country1','Portname1');
insert into Port_ values('Port326','Country2','Portname2');
insert into Port_ values('Port145','Country3','Portname4');
insert into Port_ values('Port136','Country1','Portname5');
insert into Port_ values('Port126','Country4','Portname6');
insert into Port_ values('Port796','Country5','Portname7');
insert into Port_ values('Port369','Country1','Portname8');
insert into Port_ values('Port125','Country6','Portname9');
insert into Port_ values('Port147','Country1','Portname10');
insert into Port_ values('Port896','Country9','Portname11');
insert into Port_ values('Port143','Country1','Portname12');




create table Invoice(Invoice_No varchar(20) primary key,
					 Invoice_Date date,
                     Order_Id varchar(20)
                     references Order_
                     on delete cascade
                     on update cascade,
                     Cid varchar(20) references customer
                     on delete cascade
                     on update cascade);
                              
insert into Invoice values('Invoice132','2002-02-25','Od123654','C136871');
insert into Invoice values('Invoice139','2012-03-21','Od458997','C236587');
insert into Invoice values('Invoice148','2014-04-07','Od236598','C129874');
insert into Invoice values('Invoice147','2015-05-10','Od124578','C236587');
insert into Invoice values('Invoice325','2013-06-18','Od268936','C136871');
insert into Invoice values('Invoice879','2014-08-25','Od346987','C136871');
insert into Invoice values('Invoice213','2016-06-20','Od459632','C129874');
insert into Invoice values('Invoice456','2019-06-25','Od147854','C356987');
insert into Invoice values('Invoice896','2014-09-16','Od639874','C123698');
insert into Invoice values('Invoice356','2015-11-25','Od365412','C145698');
insert into Invoice values('Invoice489','2016-02-09','Od365458','C269871');
insert into Invoice values('Invoice336','2017-01-06','Od265489','C269871');
insert into Invoice values('Invoice346','2018-07-12','Od125698','C123698');
insert into Invoice values('Invoice316','2013-04-12','Od369874','C123698');
insert into Invoice values('Invoice789','2018-06-11','Od789634','C136871');
insert into Invoice values('Invoice246','2014-04-11','Od145632','C269871');



                     
create table Import_Tax(Imp_Id varchar(20) references Import_
						on delete cascade
                        on update cascade,
                        Tax_Id varchar(20) references Tax
                        on delete cascade
                        on update cascade);
                        
insert into Import_Tax values('Impid126986','Tid123657');
insert into Import_Tax values('Impid369852','Tid123678');
insert into Import_Tax values('Impid123658','Tid125987');
insert into Import_Tax values('Impid126874','Tid159863');
insert into Import_Tax values('Impid145896','Tid987654');
insert into Import_Tax values('Impid345852','Tid366598');
insert into Import_Tax values('Impid145879','Tid364887');
insert into Import_Tax values('Impid365487','Tid447896');
                        
create table Export_Tax(Exp_Id varchar(20) references Export_
						on delete cascade
                        on update cascade,
                        Tax_Id varchar(20) references Tax
                        on delete cascade
                        on update cascade);
                        
insert into Export_Tax values('Expid136985','Tid132685');
insert into Export_Tax values('Expid265841','Tid145987');
insert into Export_Tax values('Expid148796','Tid147896');
insert into Export_Tax values('Expid158746','Tid178963');
insert into Export_Tax values('Expid147896','Tid789632');
insert into Export_Tax values('Expid445568','Tid148632');
insert into Export_Tax values('Expid122369','Tid365879');
insert into Export_Tax values('Expid789643','Tid147526');


create table Ship(Ship_No varchar(20) primary key,
					Ship_Name varchar(20)  references Ship_Name
                    on delete cascade
                    on update cascade,
                    Journey_End_Date date,
                    Journey_Start_Date date,
                    To_Port_Code varchar(20),
                    From_Port_Code varchar(20),
                    OrderId varchar(20) references Order_
                    on delete cascade
                    on update cascade);

             
insert into Ship values('Shipno1','Shipname1','2002-03-25','2002-04-24','Port213','Port326','Od123654');
insert into Ship values('Shipno2','Shipname2','2012-04-24','2012-05-26','Port326','Port145','Od458997');
insert into Ship values('Shipno3','Shipname3','2014-04-29','2014-05-28','Port136','Port126','Od236598');
insert into Ship values('Shipno4','Shipname4','2015-06-26','2015-07-28','Port796','Port369','Od124578');
insert into Ship values('Shipno5','Shipname5','2013-06-30','2013-08-10','Port125','Port147','Od268936');
insert into Ship values('Shipno6','Shipname6','2014-09-10','2014-10-30','Port365','Port786','Od346987');
insert into Ship values('Shipno7','Shipname7','2016-07-10','2016-10-10','Port147','Port896','Od459632');
insert into Ship values('Shipno8','Shipname8','2019-07-11','2019-10-22','Port143','Port326','Od147854');
insert into Ship values('Shipno9','Shipname9','2013-07-06','2013-09-22','Port213','Port143','Od639874');
insert into Ship values('Shipno10','Shipname10','2014-09-09','2014-10-16','Port326','Port896','Od365412');
insert into Ship values('Shipno11','Shipname11','2016-07-29','2016-09-18','Port326','Port136','Od365458');
insert into Ship values('Shipno12','Shipname12','2019-07-17','2019-08-20','Port145','Port896','Od265489');
insert into Ship values('Shipno13','Shipname13','2018-07-12','2018-10-02','Port147','Port796','Od125698');
insert into Ship values('Shipno14','Shipname14','2013-04-12','2013-05-22','Port369','Port796','Od369874');
insert into Ship values('Shipno15','Shipname15','2018-06-11','2018-08-06','Port125','Port896','Od789634');
insert into Ship values('Shipno16','Shipname16','2017-04-11','2017-07-13','Port143','Port126','Od145632');

                    

                    
create table Ship_Name(Ship_Name varchar(20) primary key,
						MaxLoad numeric(9,0));
					
insert into Ship_Name values('Ship_Name1',3652);
insert into Ship_Name values('Ship_Name2',4569);
insert into Ship_Name values('Ship_Name3',1236);
insert into Ship_Name values('Ship_Name4',7896);
insert into Ship_Name values('Ship_Name5',1562);
insert into Ship_Name values('Ship_Name6',1489);
insert into Ship_Name values('Ship_Name7',8963);
insert into Ship_Name values('Ship_Name8',4563);

insert into Ship_Name values('Ship_Name9',3652);
insert into Ship_Name values('Ship_Name10',3982);
insert into Ship_Name values('Ship_Name11',7892);
insert into Ship_Name values('Ship_Name12',1262);
insert into Ship_Name values('Ship_Name13',4982);
insert into Ship_Name values('Ship_Name14',3692);
insert into Ship_Name values('Ship_Name15',7842);
insert into Ship_Name values('Ship_Name16',7892);


                       
                       
                       