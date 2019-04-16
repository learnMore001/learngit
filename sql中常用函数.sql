SELECT * FROM account
id	NAME	money
1	张三三	500000
2	李四	1000000
3	lisa	NULL

sql中常用的聚合函数
/*
ACG(col)求列col的平均值,对于列值为null的不计入计算
*/
SELECT AVG(money) FROM account
结果:750000
/*
count(col):指定列统计的数据行数，计数器,列值为null的不计数
*/
SELECT COUNT(money) FROM account
结果:2
/*
min(col)|max(col):求列中的最大值和最小值
sum(col):对列值求和
*/
SELECT MAX(money) FROM account
结果:1000000
SELECT SUM(money) FROM account
结果:1500000
/*
group_concat(col):将指定列的值连接成一个用,隔开的字符串
*/
SELECT GROUP_CONCAT(money) FROM account
结果:500000,1000000

sql中常用的数字函数
/*
abs(x):求x的绝对值
mode(x,y):求x%y的值
sqrt(x):求x的平方根值
rand():返回0-1内的随机数
round(x,y):返回x四舍五入的含有y为小数的值
greatest|least(x1,x2,x3...xn):求最大|小值
ceiling|floor(x):求大|小于x的最小|大整数
truncate(x,y):将小数x截取为小数个数为y的小数
*/


sql中常用字符串函数
/*
用第一个字符作为分隔符将字符串连接起来
concat_ws(sep,s1,s2,s3...sn)
*/
SELECT CONCAT_WS(',','hello','nice','to','meet','you')
结果:hello,nice,TO,meet,you
/*
无分隔符连接字符串
concat(s1,s2,s3...sn)
*/
SELECT CONCAT('hello','nice','to','meet','you')
结果:hellonicetomeetyou
/*
替换第一个str中的指定位置长度的字符串为最后一个参数字符串
insert(str,pos,len,s)
*/
SELECT INSERT('hello,nice meet you',12,3,'to')
结果:hello,nice tot you
/*
将字符串中的字符转换为小写|大写
lcase(str)/lower(str)|ucase(str)/upper(str)
*/
SELECT LCASE('HJDkosuJJ')
结果:hjdkosujj
/*
在以,分割的list中查找匹配str字符串的第一个元素位置
find_in_set(str,list)
*/
SELECT FIND_IN_SET('hel','hel,nice,me,hel,you')
结果:1
/*
返回字符串中的字符数
length(str)
*/
SELECT LENGTH('hifgyd你好fu')
结果:14
/*
去除字符串左|右边的所有空格
ltrim(str)|rtrim(str)
*/
SELECT LTRIM('    hihf')
结果:hihf
/*
去除字符串两边的所有空格
*/
SELECT TRIM('  jhd fdj  ')
结果:jhd fdj
/*
返回字符串左|右边指定长度的字符串
left(str,l)|right(str,l)
*/
SELECT LEFT('hellomrs',3)
结果:hel

sql中常用的日期和时间函数
/*
current_date():返回当前日期
current_time():返回当前时间
now():返回当前具体日期时间
*/
SELECT CURRENT_DATE()
结果:2018-04-16
SELECT CURRENT_TIME()
结果:12:45:32
SELECT NOW()
结果:2018-04-16 12:46:10
/*
date_add(date,INTERVAL int keyword):返回date加上间隔时间int的结果(int必须按照关键字进行格式化)
date_sub(date,INTERVAL int keyword):返回date减去间隔时间int的结果(int必须按照关键字进行格式化)
*/
SELECT DATE_ADD(NOW(),INTERVAL 4 DAY):当前日期加上4天，2018-04-20 12:46:10
SELECT DATE_ADD(NOW(),INTERVAL 2 MONTH):当前日期加上2月，2018-06-16 12:46:10

SELECT DATE_SUB(NOW(),INTERVAL 4 DAY):当前日期减去4天，2018-04-12 12:46:10
SELECT DATE_SUB(NOW(),INTERVAL 2 MONTH):当前日期减去2月，2018-02-16 12:46:10
SELECT DAYNAME(NOW()):返回今天是星期几的英文
/*
DATE_FORMAT(date,fmt):依照指定的fmt格式格式化日期date
TIME_FORMAT(time,fmt):依照指定的fmt格式格式化时间time
*/
SELECT DATE_FORMAT(NOW(),'%Y/%m/%d %H-%i-%s'):2018/04/26/ 14-26-46
SELECT DATE_FORMAT(CURRENT_DATE(),'%Y/%m/%d %H-%i-%s'):2019/04/16 00-00-00
SELECT TIME_FORMAT(CURRENT_TIME(),'%Y/%m/%d %H-%i-%s'):0000/00/00 14-43-25

sql中常用的格式转换函数
/*
DATE_FORMAT(date,fmt):依照指定的fmt格式格式化日期date
TIME_FORMAT(time,fmt):依照指定的fmt格式格式化时间time
FORMAT(x,y):将x格式化为一,隔开的数字序列，y是结果位的小数位数
*/
SELECT FORMAT(15362.235687459,4);结果:15,362.2357
/*
inet_aton(ip):返回ip地址的数字表示方式
inet_ntoa(num):返回数字所代表的的ip地址
*/
SELECT INET_ATON('127.0.0.1');结果:2130706433
SELECT INET_ATON('192.168.0.1');结果:3232235521

SELECT INET_NTOA(1546897564);结果:92.51.200.156

sql中常用的类型转换函数
/*
cast()将一个值转换为指定的数据类型，类型有:BINARY,CHAR,DATE,TIME,DATETIME,SIGNED,UNSIGNED
*/
SELECT CAST(NOW() AS SIGNED INTEGER),CURRENT_DATE()+0;结果:20180416145311 20190416
SELECT CAST('20180411' AS DATE);结果:2018-04-11
SELECT CAST('20180411132526' AS DATETIME);结果:2018-04-11 13:25:26
SELECT CAST(NOW() AS CHAR);结果为日期对应的字符串值

sql中常用的控制流函数
/*
CASE col 
WHEN v1 THEN r1 
WHEN v2 THEN r2
WHEN v3 THEN r3
...
ELSE default r
END

IFNULL(col,v):如果col值为null，则该表达式结果是v，否则是其本身值
*/




