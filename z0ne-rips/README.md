# RIPS-PHP动化代码审计工具

- [RIPS](https://github.com/ripsscanner/rips)源码

- 能够检测XSS、SQL注入、文件泄露、本地/远程文件包含、远程命令执行以及更多种类型的漏洞。
- 有5种级别选项用于显示以及辅助调试扫描结果。
- 标记存在漏洞的代码行。
- 对变量高亮显示。
- 在用户定义函数上悬停光标可以显示函数调用。
- 在函数定义和调用之间灵活跳转。
- 详细列出所有用户定义函数（包括定义和调用）、所有程序入口点（用户输入）和所有扫描过文件（包括include的文件）。
- 以可视化的图表展示源代码文件、包含文件、函数及其调用。
- 仅用几个鼠标点击就可以使用CURL创建针对检测到漏洞的EXP实例。
- 详细列出每个漏洞的描述、举例、PoC、补丁和安全函数。
- 7种不同的语法高亮显示模式。
- 使用自顶向下或者自底向上的方式追溯显示扫描结果。
- 一个支持PHP的本地服务器和浏览器即可满足使用需求。
- 正则搜索功能。


## 快速启动
`docker run -d -ti --name rips -p 8080:80 -v /path/php/src:/phpsrc z0ne-rips`

启动后访问`http://ip:8080/rips`

浏览器中输入Web服务器地址和对应目录，这里映射的是`/phpsrc`目录

## 演示

![演示图片1](https://github.com/Insh3ll/DockerfileSet/blob/master/z0ne-rips/1.png)


![演示图片2](https://github.com/Insh3ll/DockerfileSet/blob/master/z0ne-rips/2.png)
