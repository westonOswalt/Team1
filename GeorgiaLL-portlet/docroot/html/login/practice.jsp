<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>








<body>

<h1>This is a Heading</h1>




<p>
<aui:button-row>

         <div>
         
         <portlet:renderURL var="loginURL">
        	<portlet:param name="mvcPath" value="/html/login/view.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= loginURL.toString() %>" value="Cancle"></aui:button>
    	 <aui:button onClick="<%= loginURL.toString() %>" value="Cancle"></aui:button>
    	 
    	 </div>
    	 
    	 
    \
</aui:button-row>



</p>











</body>
</html>