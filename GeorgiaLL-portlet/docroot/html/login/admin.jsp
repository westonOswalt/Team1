
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>



<portlet:defineObjects />


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  
  <script src="http://cdn.alloyui.com/3.0.1/aui/aui-min.js"></script>
<link href="http://cdn.alloyui.com/3.0.1/aui-css/css/bootstrap.min.css" rel="stylesheet"></link>


</head>
<body>
  <h1>League Admin</h1>
  <portlet:actionURL name="admin" var="adminURL"></portlet:actionURL>
  
 
  
<aui:button-row>  

 Existing Leagues
            <select id="divNumber" name="divisionMenu" onchange="addBoxes(this.value);">
			  	<option value=0>(Select Option)</option>
			    <option value=1>1</option>
			    <option value=2>2</option>
			    <option value=3>3</option>
			</select>


      	 
    	 <portlet:renderURL var="loginURL">
        	<portlet:param name="mvcPath" value="/html/login/view.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= loginURL.toString() %>"  value="Edit"></aui:button>
  
</div>
  
  
    <script>
    YUI().use(
    		  'aui-dropdown',
    		  function(Y) {
    		    new Y.Dropdown(
    		      {
    		        boundingBox: '#myDropdown',
    		        trigger: '#myTrigger'
    		      }
    		    ).render();
    		  }
    		);
  </script>
  
 
 
  
</aui:button-row>
  
  
  

<aui:button-row>

     
    	 
    	 
    	 
    	 <portlet:renderURL var="adminURL">
        	<portlet:param name="mvcPath" value="/html/login/crleague.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= adminURL.toString() %>" value="Create"></aui:button>
    	 
    	 
    	 <portlet:renderURL var="adminURL">
        	<portlet:param name="mvcPath" value="/html/login/view.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= adminURL.toString() %>" value="Cancle"></aui:button>
         
</aui:button-row>


  
</body>
</html>





