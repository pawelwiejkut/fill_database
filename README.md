# Fill database with random data

This is a simple SQL script which allows you to create sample database and fill it with random data. Scripts are now available for Oracle and Hana database.

If you want to change ammount of data, you should change the value in LOOP:
```
APLHABET = ARRAY('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
	WHILE CNTR < 500000 DO
			INSERT INTO COMPANY SELECT 
```
