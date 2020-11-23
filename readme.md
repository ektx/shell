# Shell 基础教程

[toc]

## 查看当前系统信息

```bash
uname -a
```

## 文件夹访问权限

```bash
# 把 ~/iserver 权限设置为rwxrwxr-x
chmod 775 

# 把 ~/iserver及其子文件夹设置为 rwxrwxr-x
chmod -R 755
```

[Linux常用命令：chmod修改文件权限 777和754](https://blog.csdn.net/pythonw/article/details/80263428)  

## 编写简单的可执行文件
创建 helloWorld.sh 文件
添加以下内容：

```bash
#!/bin/bash

echo 'hello world'
```

添加可执行权限：`chmod a+x helloWrold.sh`   
运行：`./helloWorld.sh` 可见输出 **hello world**  

## 系统默认参数 

- $0 当前程序名称
- $n 当前程序的第n个参数
- $* 当前程序的所有参数（不包括程序本身）
- $# 当前程序的参数个数（不包括程序本身）
- $? 命令或程序执行完成后的状态，一般返回0表示执行成功
- $UID 当前用户的ID
- $PWD 当前所在的目录

demo.sh
```bash
#!/bin/bash
echo $1 $2
```

运行 `./demo.sh abc 123` ,此时，会输出 ==abc 123==,这里 abc 为 `$1`, 123 为 `$2`。


# 参考
[📚 Shell教程](https://www.runoob.com/linux/linux-shell.html)  

