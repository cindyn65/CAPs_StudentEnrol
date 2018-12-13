<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div class="container">
  <form:form class="form-horizontal" method="POST" modelAttribute="enrolobj"
	action="${pageContext.request.contextPath}/enrol/create.html" >
	
	
	
    <div class="form-group">
      <label class="control-label col-sm-2" for="course">
      	<spring:message code="fieldLabel.courseName" />
      </label>
      <div class="col-sm-4">
 			<form:select path="course.courseid" class="form-control">
				<c:forEach var="course" items="${courselst}">
					<form:option value="${course.courseid}">${course.courseName} </form:option>
				</c:forEach>
			</form:select>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for=user>
      	<spring:message code="fieldLabel.nameAndEmail" />
      </label>
      <div class="col-sm-4">
 			<form:select path="user.userid" class="form-control">
				<c:forEach var="u" items="${studentlst}">
					<form:option value="${u.userid}">${u.firstMidName} ${u.lastName} (${u.email})</form:option>
				</c:forEach>
			</form:select>
      </div>
    </div>
    
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
       <!--  <button type="submit" class="btn btn-default">Submit</button> -->
       <form:button name="submit" class="btn btn-default" type="submit">Update</form:button>
</div>
</div>
  </form:form>
</div>
