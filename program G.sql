mysql> use mangalam
ERROR 1049 (42000): Unknown database 'mangalam'
mysql> use mangalam;
ERROR 1049 (42000): Unknown database 'mangalam'
mysql> create database mangalam;
Query OK, 1 row affected (0.31 sec)

mysql> create databse enterprise;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'databse enterprise' at line 1
mysql> use mangalam;
Database changed
mysql> create table department(deptno int,dname varchar(20),job varchar(20),mgr varchar(20),hiredate date);
Query OK, 0 rows affected (0.22 sec)

mysql> truncate table department;
Query OK, 0 rows affected (0.12 sec)

mysql> create table department(deptno int,dname varchar(20),loc varchar(20));
ERROR 1050 (42S01): Table 'department' already exists
mysql> drop table department;
Query OK, 0 rows affected (0.07 sec)

mysql> create table department(deptno int,dname varchar(20),loc varchar(20));
Query OK, 0 rows affected (0.07 sec)

mysql> create table employee(empno int,ename varchar(20),job varchar(20),mgr varchar(20),hierdate date,comm int,deptno int);
Query OK, 0 rows affected (0.07 sec)

mysql> insert into employee values(100,"mahesh","sales","varunni","2000/02/02","10",234);
Query OK, 1 row affected, 1 warning (0.06 sec)

mysql> insert into employee values(101,"anandu","sales","boss","2012/02/01","10",234);
Query OK, 1 row affected, 1 warning (0.04 sec)

mysql> insert into employee values(102,"aswin","designer","james","2024/02/01","34",244);
Query OK, 1 row affected, 1 warning (0.03 sec)

mysql> insert into employee values(102,"abin","accountant","manoj","2045/10/30","32",123);
Query OK, 1 row affected, 1 warning (0.04 sec)

mysql> update employee set empno="103" where ename="abin";
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-------+--------+------------+---------+------------+------+--------+
| empno | ename  | job        | mgr     | hierdate   | comm | deptno |
+-------+--------+------------+---------+------------+------+--------+
|   100 | mahesh | sales      | varunni | 2000-02-02 |   10 |    234 |
|   101 | anandu | sales      | boss    | 2012-02-01 |   10 |    234 |
|   102 | aswin  | designer   | james   | 2024-02-01 |   34 |    244 |
|   103 | abin   | accountant | manoj   | 2045-10-30 |   32 |    123 |
+-------+--------+------------+---------+------------+------+--------+
4 rows in set (0.00 sec)

mysql> alter table employee add column salary int;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update set salary="1000" where ename="mahesh";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'set salary="1000" where ename="mahesh"' at line 1
mysql> update employee set salary="1000" where ename="mahesh";
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-------+--------+------------+---------+------------+------+--------+--------+
| empno | ename  | job        | mgr     | hierdate   | comm | deptno | salary |
+-------+--------+------------+---------+------------+------+--------+--------+
|   100 | mahesh | sales      | varunni | 2000-02-02 |   10 |    234 |   1000 |
|   101 | anandu | sales      | boss    | 2012-02-01 |   10 |    234 |   NULL |
|   102 | aswin  | designer   | james   | 2024-02-01 |   34 |    244 |   NULL |
|   103 | abin   | accountant | manoj   | 2045-10-30 |   32 |    123 |   NULL |
+-------+--------+------------+---------+------------+------+--------+--------+
4 rows in set (0.00 sec)

mysql> update employee set salary="2000" where ename="anandu";
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee set salary="3000" where ename="aswin";
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee set salary="1500" where ename="abin";
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> display * from employee;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'display * from employee' at line 1
mysql> select * from employee;
+-------+--------+------------+---------+------------+------+--------+--------+
| empno | ename  | job        | mgr     | hierdate   | comm | deptno | salary |
+-------+--------+------------+---------+------------+------+--------+--------+
|   100 | mahesh | sales      | varunni | 2000-02-02 |   10 |    234 |   1000 |
|   101 | anandu | sales      | boss    | 2012-02-01 |   10 |    234 |   2000 |
|   102 | aswin  | designer   | james   | 2024-02-01 |   34 |    244 |   3000 |
|   103 | abin   | accountant | manoj   | 2045-10-30 |   32 |    123 |   1500 |
+-------+--------+------------+---------+------------+------+--------+--------+
4 rows in set (0.00 sec)

mysql> update employee set salary=salary*1.15 where datediff(current_date(),hierdate)>3650;
Query OK, 2 rows affected (0.10 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from employee;
+-------+--------+------------+---------+------------+------+--------+--------+
| empno | ename  | job        | mgr     | hierdate   | comm | deptno | salary |
+-------+--------+------------+---------+------------+------+--------+--------+
|   100 | mahesh | sales      | varunni | 2000-02-02 |   10 |    234 |   1150 |
|   101 | anandu | sales      | boss    | 2012-02-01 |   10 |    234 |   2300 |
|   102 | aswin  | designer   | james   | 2024-02-01 |   34 |    244 |   3000 |
|   103 | abin   | accountant | manoj   | 2045-10-30 |   32 |    123 |   1500 |
+-------+--------+------------+---------+------------+------+--------+--------+
4 rows in set (0.00 sec)

mysql> update employee set salary=salary*1.15 where datediff(current_date(),hierdate)>3650;
Query OK, 2 rows affected (0.04 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from employee;
+-------+--------+------------+---------+------------+------+--------+--------+
| empno | ename  | job        | mgr     | hierdate   | comm | deptno | salary |
+-------+--------+------------+---------+------------+------+--------+--------+
|   100 | mahesh | sales      | varunni | 2000-02-02 |   10 |    234 |   1323 |
|   101 | anandu | sales      | boss    | 2012-02-01 |   10 |    234 |   2645 |
|   102 | aswin  | designer   | james   | 2024-02-01 |   34 |    244 |   3000 |
|   103 | abin   | accountant | manoj   | 2045-10-30 |   32 |    123 |   1500 |
+-------+--------+------------+---------+------------+------+--------+--------+
4 rows in set (0.00 sec)

mysql> select count(mgr) from employee where mgr="vasu";
+------------+
| count(mgr) |
+------------+
|          0 |
+------------+
1 row in set (0.00 sec)
