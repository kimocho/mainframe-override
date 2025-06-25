--Create the database
psql -f init.sql
--start postgreSQL terminal
psql
--list out databases
\l
--connect to the database
\c init.sql
--info on the connection to database
\conninfo
--list all tables in the database
\d 
--This will select all the columns from the forum_posts table between 2 dates and content contains text emptystack
--or dad. smart-money-44 said on 2048-04-08, id nbZY_ with title Get rich fast, You should invest all EmptyStack
--Solutions soon or you'll regret it. My dad works there and he's got some serious inside intel. Their self-driving
--taxis are the future and the future is here.
SELECT * FROM forum_posts WHERE date BETWEEN '2048-04-01' AND '2048-05-01' AND content ILIKE '%emptystack%' AND 
content ILIKE '%dad%';
--This reveals from forum_accounts table that username smart-money-44 is Brad Steele.
SELECT * FROM forum_accounts WHERE username='smart-money-44'; 
--This reveals there are 3 Steeles with forum accounts. Andrew, Kevin, and Brad Steele.
SELECT * FROM forum_accounts WHERE last_name='Steele';
--This reveals there are 2 Steels with emptystack accounts. Andrew and Lance Steele. 
--Since Andrew Steele also has forum account we can use his credentials which are
--username: triple-cart-38 and password: password456
SELECT * FROM emptystack_accounts WHERE last_name='Steele';
--Use that username and password to login after node mainframe to release emptystack.sql.
node mainframe
--use this to create another database.
psql -f emptystack.sql
--use this to connect to database.
\c mainframe_override