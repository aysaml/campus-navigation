<p>你好，${name}童鞋，欢迎加入XXX大家庭！您的申请信息如下：</p>
<table border="1" cellspacing="0">
    <tr><td><strong style="color: #F00">学号</strong></td><td>${workID}</td></tr>
    <tr><td><strong style="color: #F00">学年期限</strong></td><td>${contractTerm}年</td></tr>
    <tr><td><strong style="color: #F00">入学起始日期</strong></td><td>${beginContract?string("yyyy-MM-dd")}</td></tr>
    <tr><td><strong style="color: #F00">毕业截至日期</strong></td><td>${endContract?string("yyyy-MM-dd")}</td></tr>
    <tr><td><strong style="color: #F00">所属学院</strong></td><td>${departmentName}</td></tr>
    <tr><td><strong style="color: #F00">职位</strong></td><td>${posName}</td></tr>
</table>
<p><strong style="color: #F00; font-size: 24px;">希望在未来的日子里，携手共进!</strong></p>