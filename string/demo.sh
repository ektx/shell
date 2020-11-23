#!/bin/bash
# 单引号不能有转义
str='this is a string 1'
# 双引号可以有转义
str2="this is a \"string 2\", ${str}"

echo $str
# 双引号可以有变量的引用
echo $str2
# 单引号的内容只会原样输出，不能有变量
echo '${str}'