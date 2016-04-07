# shell awk

## 简介

### 使用方式
##### 命令行使用  
```sh
awk '/foo/ {print $0}' list
```
搜寻 list 里的每一行是否含有子字串 'foo'，如果含有 'foo' 则打印出来

```sh
# Get
fooey 555-1234 2400/1200/300 B 
foot 555-6699 1200/300 B 
macfoo 555-6480 1200/300 A 
sabafoo 555-2127 1200/300 C
```

```sh
awk '$1 == "Feb" {sum = $2 + $3} END {print sum}' day
```
在文档 day 中每一行匹配的第一栏匹配是否为 Feb ,如果是的话,则把它的第3栏和第4栏想加,最终打印出来  
```sh
#GET
84
```

### 栏位  
awk 会自动将每个记录分解成多个栏位.类似于字在一行里面,awk的内定动作会认为栏位之间以 whitespace 分开.  
在 awk 中, whithspace 可以是一个或多个空白或是 tabs.  

This seems like a pretty nice example.  

第一个栏位($1)是 This, 第2个栏位($2)是 seems ,依次类推.    
__注意:__ 第7个栏位($7)是 example. 

### printf
[了解 printf](printf.md)

### 错误全集
- `-bash: gawk: command not found`  
  这里在Mac中发现的问题,主要是Mac中没有此指令,下载安装地址:
  [rudix.org gawk](http://rudix.org/packages/gawk.html)   
  [Install gawk on Mac OS X](http://macappstore.org/gawk/)

#### 参考
[Gawk](http://linux.ximizi.com/linux/linux5458.htm)