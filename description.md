
# Dotfile Design

Based on bash script,

One entry: startup.sh, in this script, it will successively load common function and concrete sub-script with different conditions.

# Bash

## variable
Bash 变量名区分大小写，HOME和home是两个不同的变量。

[definition]Bash 没有数据类型的概念，所有的变量值都是字符串。
```
a=z                     # 变量 a 赋值为字符串 z
b="a string"            # 变量值包含空格，就必须放在引号里面
c="a string and $b"     # 变量值可以引用其他变量的值
d="\t\ta string\n"      # 变量值可以使用转义字符
e=$(ls -l foo.txt)      # 变量值可以是命令的执行结果
f=$((5 * 7))            # 变量值可以是数学运算的结果
```

[read]读取变量的时候，直接在变量名前加上$就可以了。
echo $foo; echo ${foo}

[default value] ${varname:=word}

## script
用脚本的时候，脚本文件名后面可以带有参数。

$ script.sh word1 word2 word3
上面例子中，script.sh是一个脚本文件，word1、word2和word3是三个参数。

脚本文件内部，可以使用特殊变量，引用这些参数。

$0：脚本文件名，即script.sh。
$1~$9：对应脚本的第一个参数到第九个参数。
$#：参数的总数。
$@：全部的参数，参数之间使用空格分隔。
$*：全部的参数，参数之间使用变量$IFS值的第一个字符分隔，默认为空格，但是可以自定义。


## function

## condition
```
if commands; then
  commands
[elif commands; then
  commands...]
[else
  commands]
fi
```
### 字符串判断
[ -n string ]：如果字符串string的长度大于零，则判断为真
[ -z string ]：如果字符串string的长度为零，则判断为真
[ string1 = string2 ]：如果string1和string2相同，则判断为真。
[ string1 == string2 ] 等同于[ string1 = string2 ]。

# homebrew
