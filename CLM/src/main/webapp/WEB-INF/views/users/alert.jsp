<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/alert.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css" />
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.1.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/common.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</head>
<body>
<!-- /#signinModal -->
<div id="signupModal" class="modal fade" tabindex="-1" role="dialog">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title"><i class="glyphicon glyphicon-ok-sign" style="margin-right:10px"></i>${msg }</h4>
         </div>
         <div class="modal-body">
            ${msg1 }
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><a href="${redirectUri}">확인</a></button>
         </div>
      </div><!-- /.modal-content -->
   </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


</body>
</html>




