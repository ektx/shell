
# useColor 是用来统计当前Git的新增加与删除行数的sh
# 使用方式:
#     git log --pretty=tformat: --numstat| awk -f usecolor.sh


# author: ektx <530675800@qq.com>

function add(s) {
	printf "\033[1;33m Add: \033[0m %5s", s
}
function del(s) {
	printf "\033[1;31m Del: \033[0m %5s\n", s
}
function sum(a, d) {
	printf "\033[1;35m Add:  %5s DEL:  %5s\033[0m\n", a, d
}

{
	ADD+= $1; DEL+= $2;
	add($1) del($2)
} END {
	sum(ADD, DEL)
}