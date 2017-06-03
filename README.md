# OnlineBankSystem
JSP课程设计

关于页面：
首先，必须按照bootstrap模板，开局引用导航页面，目前有两个导航页面：header.jsp,和 header_customer.jsp。
header.jsp是标准的拥有注册按钮的导航条，用<jsp:include>标签引用；
header_customer.jsp目前唯一的区别就是没有了注册按钮，改为了用户按钮。
同样的，有一个通用的简单footer.jsp页面，在页面结尾include即可。

关于css和js文件：
用于模板的文件里，比如header和footer，都只link了自己用到的css文件，但本应该放在结尾的脚本，统一放到引用目标页面的结尾，在bootstrap和jQuery之后，否则将不起作用，还会报错（因为没有先引用jQuery脚本文件，jQuery语法和功能无法使用。）
也许会考虑将通用的脚本文件放到模板页面内，但这样就不符合脚本放最后加快客户端页面显示错误的问题了。

当前计划：
页面缺少许多，然后就是注册顺序问题。现在决定先注册customer表的内容，即登陆用到的id和密码。
然后再在用户登陆后检测是否在account表中有内容，如果没有就跳转到创建account以及选择账户类型的页面上。
计划先写好两个注册页面，再进行下一步规划。
（ps:当然得先解决当前的bug和数据库改动（ps:ps:使customer表完全独立，用户id成为account表的FK，account表的id再成为其他表的FK））
