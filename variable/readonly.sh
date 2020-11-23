#!/bin/bash

name="shell"
# 设置为只读属性
readonly name

# 重新赋值时，报错
name="book"