-- Obi Chukwuemeka 

-- CS 328 - spring 2022

--Last date modified 04/20/2022
prompt *************************************************************************
prompt ***********************************************************************

drop table sellerOC cascade constraints;

create table sellerOC 
(seller_fname  varchar2(15) not null,
 seller_lname  varchar2(30),
 seller_address     varchar2(30),
 seller_email    varchar2(30),
 seller_areacode number(3),
 seller_phone_num varchar2(16),
 seller_city      varchar2(15),
 seller_price    char(7), 
 current_selling_state    varchar2(8),
 seller_House     varchar2(6),
 seller_Condo      varchar2(6),
 seller_Townhome    varchar2(6),
 seller_Multi_Family   varchar2(6),
 seller_Land       varchar2(6),
 seller_Mobile_Manufactured  varchar2(6),
 seller_Other      varchar2(6),
 seller_Studio   varchar2(6),
 seller_any  varchar2(6),
 seller_1    varchar2(6),
 seller_2  varchar2(6),
 seller_3  varchar2(6),
 seller_4      varchar2(6),
 seller_5     varchar2(6),
 seller_any1    varchar2(6),
 seller_a1   varchar2(6),
 seller_15 varchar2(6),
 seller_a3      varchar2(6),
 seller_a4     varchar2(6), 
 seller_a5     varchar2(6),
 Additional_Info  varchar2(30), 
 primary key (seller_phone_num)
);

set serveroutput on


CREATE OR REPLACE FUNCTION myprice
RETURN CHAR
is
maxprice char(8);
BEGIN 
		select MAX(seller_price)
		into maxprice
		from sellerOC;
return maxprice;
END;

/ 

show errors;

create or replace procedure mypro
as
maxp char(8);
begin
maxp:= myprice;
dbms_output.put_line(' Highest offer so far is ' || maxp);
END;
/
show errors;