<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>编辑器完整版实例-1.2.6.0</title>
	<script type="text/javascript" src="ueditor.config.js" charset="utf-8"></script>
	<script type="text/javascript" src="ueditor.all.js" charset="utf-8"></script>
	<link type="text/css" rel="Stylesheet" href="WordPaster/css/WordPaster.css"/>
    <link type="text/css" rel="Stylesheet" href="WordPaster/js/skygqbox.css" />
    <script type="text/javascript" src="WordPaster/js/json2.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/jquery-1.4.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/WordPaster.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/skygqbox.js" charset="utf-8"></script>
</head>
<body>
	<textarea name="后台取值的key" id="myEditor">这里写你的初始化内容</textarea>
	<script type="text/javascript">
        var pasterMgr = new WordPasterManager();
    	pasterMgr.Config["PostUrl"] = "http://localhost:91/asp/upload.asp"
		pasterMgr.Config["Cookie"] = 'ASPSESSIONID=<%=Session.SessionID%>';
    	pasterMgr.Load();//加载控件
		
		 UE.getEditor('myEditor',{onready:function(){//创建一个编辑器实例
		     pasterMgr.SetEditor(this);
		 }});
	</script>
</body>
</html>
