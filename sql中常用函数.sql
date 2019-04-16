SELECT * FROM account
id	NAME	money
1	张三三	500000
2	李四	1000000
3	lisa	NULL

/*
sql中常用的聚合函数
*/
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

/*
sql中常用的数字函数

abs(x):求x的绝对值
mode(x,y):求x%y的值
sqrt(x):求x的平方根值
rand():返回0-1内的随机数
round(x,y):返回x四舍五入的含有y为小数的值
greatest|least(x1,x2,x3...xn):求最大|小值
ceiling|floor(x):求大|小于x的最小|大整数
truncate(x,y):将小数x截取为小数个数为y的小数

*/


/*sql中常用字符串函数*/
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