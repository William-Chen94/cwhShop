<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>按终点名称规划路线</title>
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <style type="text/css">
        #panel {
            position: absolute;
            background-color: white;
            max-height: 80%;
            overflow-y: auto;
            top: 10px;
            right: 10px;
            width: 250px;
            border: solid 1px silver;
        }
    </style>
    <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=c21599a9a01d1611430e3a71c251f6ef&plugin=AMap.Transfer"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<body>
<div id="container"></div>
<div id="panel"></div>
<%String  destination = request.getAttribute("destination").toString();%>
<script type="text/javascript">
    var map = new AMap.Map("container", {
        resizeEnable: true,
        center: [116.397428, 39.90923],
        zoom: 13 
    });
    
    var destination = "<%=destination%>"; 
    var transOptions = {
        map: map,
        city: '长沙市',
        panel: 'panel',                           
        policy: AMap.TransferPolicy.LEAST_TIME //乘车策略
    };
    //构造公交换乘类
    var transfer = new AMap.Transfer(transOptions);
    //根据起、终点名称查询公交换乘路线
    transfer.search([
                     {keyword: '长沙大学致远楼',city:'长沙'},
                     //第一个元素city缺省时取transOptions的city属性
                     {keyword: destination,city:'长沙'}
                     //第二个元素city缺省时取transOptions的cityd属性,
                     //没有cityd属性时取city属性
                    ]);
</script>

</body>
</html>