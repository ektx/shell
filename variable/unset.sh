#!/bin/bash
name="shell"
echo $name

unset name

# 此时输出时，会没有内容输出
echo $name