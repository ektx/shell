#!/bin/bash

string="hello world"

# 查找 e或o出现的位置，哪个先出现就输出那个
echo `expr index "$string" eo`