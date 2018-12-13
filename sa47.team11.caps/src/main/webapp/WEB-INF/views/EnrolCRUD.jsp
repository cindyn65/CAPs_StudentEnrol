<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="<c:url value='/css/style.css'/>" rel="stylesheet"
	type="text/css" />

<a href="${pageContext.request.contextPath}/enrol/create">Add Enrolment</a>
<c:if test="${fn:length(StudentEnrolment) gt 0}">
	<br />
	<br />
	<table> 
	<tr> 
	<td>SN</td>
	<td>Student ID</td>
	<td>Course Name</td>	
	<td>Date Registered</td>
	<td>Status of Enrolment</td>
	</tr>
	
	<c:forEach var="studentEnrolments" items="${enrolmt}" varStatus="idx">
	<tr>
			<td>${idx.index+1}</td>
		      <td scope="row">${studentEnrolments.getUser().getUserid()}</td>
		      <td>${studentEnrolments.getUser().getFirstMidName()}</td>
		      <td>${studentEnrolments.getUser().getLastName()}</td> 
		      <td>${studentEnrolments.statusEnroll}</td>
		      <td><fmt:formatDate pattern = "dd MMM yyyy" value="${studentEnrolments.dateRegistered }"/></td>
		      
	
         <tr>
       <td>${index.index+1}</td>
       <td>${user.id}</td>
       <td>${user.username}</td>
       <td>${user.address}</td>
       <td>${user.email}</td>
       <td><a href="${pageContext.request.contextPath}/user/edit/${user.id}">Edit User</a></td>
       <td><a href="${pageContext.request.contextPath}/user/delete/${user.id}">Delete User</a></td>
       
     </tr>

</c:forEach>



   </table>
   </c:if>