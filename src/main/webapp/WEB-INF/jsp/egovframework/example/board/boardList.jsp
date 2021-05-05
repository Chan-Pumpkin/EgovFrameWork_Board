<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물</title>
</head>
<body>

<div class="panel-body">
					<form class="form-inline" name="search" id="search"  method="post"  action="<c:url value='/boardList.do'/>">
						<div class="form-group">
							<label for="searchKeyword">제목(내용):</label> 
							<input type="text" class="form-control" id="searchKeyword" name="searchKeyword" value = "${searchKeyword}" >
						</div>
						<button type="submit" class="btn btn-default" >검색</button>
						<!-- 게시물 총 개수 -->
							<span class="badge">게시물 개수 : ${paginationInfo.totalRecordCount}</span>
					</form>
							
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
								<tr>
									<th style="width:20%; text-align:center;">게시물 번호</th>
									<th style="width:40%; text-align:center;">제목</th>
									<th style="width:20%; text-align:center;">등록자</th>
									<th style="width:20%; text-align:center;">등록일</th>
								 	<!-- <th>원글번호</th>
									<th>그룹내순서</th>
									<th>원글 답글 유무</th>  -->
									<!-- <th>조회수</th> -->
								</tr>
							</thead>
							<tbody>
	
								<c:forEach var="result" items="${resultList}">
									<tr>
										<td style="width:20%; text-align:center;"><a href="javascript:fn_goBoardView('${result.idx}');"><c:out value="${result.idx}" /></a></td>
										<td style="width:40%; text-align:left;"><a href="javascript:fn_goBoardView('${result.idx}');"><c:out value="${result.title}" /></a></td>
										<td style="width:20%; text-align:center;"><c:out value="${result.writerName}" /></td>
										<td style="width:20%; text-align:center;"><c:out value="${result.indate}" /></td>
										<%-- <td><c:out value="${result.originNo}" /></td>
										<td><c:out value="${result.groupOrd}" /></td>
										<td><c:out value="${result.groupLayer}" /></td> --%>
										<%-- <td><c:out value="${result.count}" /></td> --%>								
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div id="paging">
						<ul class="pagination">
        					<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="page" />
        					<%-- <form:hidden path="pageIndex" /> --%>
        				</ul>
        			</div>
				</div>

</body>
</html>