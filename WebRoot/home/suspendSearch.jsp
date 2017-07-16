<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

	<head>
	</head>
  
  <body>
    <div class="nav white">
					<div class="logoBig">
						<li><img
							src="${pageContext.request.contextPath}/images/logobig.png" />
						</li>
					</div>

					<div class="search-bar pr">
						<a name="index_none_header_sysc" href="#"></a>
						<form action="/cwhShop/findByName/1" method="post">
							<input id="searchInput" id="searchInput" name="searchInput" type="text"
								placeholder="搜索" autocomplete="off"> <input
								id="ai-topsearch" class="submit am-btn" value="搜索" index="1"
								type="submit">
						</form>
					</div>
				</div>
				<div class="clear"></div>
  </body>
</html>
