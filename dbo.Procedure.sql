create proc proc_user_reg
(
	@fname varchar(50),
	@lname varchar(50),
	@gender varchar(50),
	@loginid varchar(50),
	@pass varchar(50),
	@phone varchar(50),
	@email varchar(50),
	@address varchar(50),
	@date varchar(50),
	@time varchar(50),
	@admin_check int,
	@active int,
	@role int
)
as begin
insert into user_reg ( Fname,Lname,Gender,Loginid,Password,Phone,Email,Address,Date,Time,Admin_check,Active,Role)
values(
	@fname ,
	@lname ,
	@gender ,
	@loginid ,
	@pass ,
	@phone ,
	@email ,
	@address ,
	@date ,
	@time ,
	@admin_check ,
	@active ,
	@role 
	)
end
---------------------------------------------------


CREATE proc user_login
(
	@role int,
	@loginid varchar(50),
	@password varchar(50)
	
)
as begin
select * from user_reg where  Password=@password and Loginid=@loginid and Admin_check=1 and Active=1 and Role=@role
end
----------------------------------------------------

CREATE proc proc_user_rejected
as begin
select * from user_reg where Admin_check=1 and Active=0
end
--------------------------------------------------

create proc proc_user_approved
as begin
select * from user_reg where Admin_check=1 and Active=1
end
---------------------------------------------------

CREATE proc proc_save_file
(
    
   
   
    @name varchar(max),
    @content varbinary(max),
	
    @date varchar(50),
	@id varchar(50)
)
as begin
insert into save_file(file_name , content , date,uid)
values(
   
    @name ,
	
    @content ,
    @date,
	@id
)
end
-------------------------------------------------------

create proc proc_save_cmail
(
    @to varchar(50),
    @from varchar(50),
    @subject varchar(50),
    @body varchar(50),
    @name varchar(max),
    @content varbinary(max),
    @date varchar(50)
)
as begin
insert into compose(to_msg,from_msg, subject, body , file_name , file_content , date)
values(
    @to ,
    @from ,
    @subject,
    @body ,
    @name ,
    @content ,
    @date 
)
end
----------------------------------------------------

create proc proc_get_doc
(@id int)
as begin
select * from compose where Id=@id
end
------------------------------------------------

create proc proc_add_fav
(
@id varchar(50),
@name varchar(50),
@url varchar(50)
)
as begin
insert into Favourates (uid,name,url) values (@id,@name,@url)
end
------------------------------------------------------

CREATE proc porc_user_view
as begin
select * from user_reg where Admin_check = 0 and Active=0
end


























