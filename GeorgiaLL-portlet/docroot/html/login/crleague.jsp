<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>






<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  
  <script src="http://cdn.alloyui.com/3.0.1/aui/aui-min.js"></script>
<link href="http://cdn.alloyui.com/3.0.1/aui-css/css/bootstrap.min.css" rel="stylesheet"></link>


</head>
<body>



<portlet:defineObjects />

<portlet:renderURL var="viewURL">
    <portlet:param name="mvcPath" value="/html/guestbook/view.jsp"></portlet:param>
</portlet:renderURL>

<portlet:actionURL name="addEntry" var="addEntryURL"></portlet:actionURL>



<form action="com.test.NewLeague" name="<portlet:namespace />fm">
        <aui:fieldset>
            League Name <input name="leagueName" type="text">
            <br/>
            <br/>
            League Address <input name="leagueAddress type="text">
            <br/>
            <br/>
            League Description <textarea rows="10" cols="10" name="leagueDesciption"></textarea>
            <br/>
            <br/>
            Number of Divisions
            <select id="divNumber" name="divisionMenu" onchange="addBoxes(this.value);">
			  	<option value=0>(Select Option)</option>
			    <option value=1>1</option>
			    <option value=2>2</option>
			    <option value=3>3</option>
			</select>
			
			<script> 
			
			function addBoxes(obj)
			{
				var divisionCount = obj;
				var i;
				var container = document.getElementById("divisionsContainer");
				
				while (container.hasChildNodes())
				{
					container.removeChild(container.lastChild);
				}
				
				for(i = 0; i < divisionCount; i++)
				{
					container.appendChild(document.createTextNode("Division " + (i + 1) + " "));
					var input = document.createElement("input");
					input.type = "text";
					container.appendChild(input);
					container.appendChild(document.createElement("br"));
				}
			}
			</script>
			
			<div id="divisionsContainer">
			<p id="divisions">&nbsp;&nbsp;&nbsp;</p>
			</div>
			
			<br/>
			<br/>
			<aui:fieldset last="true">
			<p>League Type</p>
			<table border="5">
			<tr>
				<td>Baseball <input name="baseballChckBox" type="checkbox">
					Softball <input name="softballChckBox" type="checkbox"></td>
			</tr>
			</table>
			</aui:fieldset>
        </aui:fieldset>

      <aui:button-row>
         <portlet:renderURL var="loginURL">
        	<portlet:param name="mvcPath" value="/html/login/admin.jsp"></portlet:param>
    	 </portlet:renderURL>
    	 <aui:button onClick="<%= loginURL.toString() %>" value="Cancel"></aui:button>
    	 
    	  <portlet:renderURL var="loginURL">
         <portlet:param name="mvcPath" value="/html/login/practice.jsp"></portlet:param>
         </portlet:renderURL>
    	 <aui:button onClick="<%= loginURL.toString() %>" value="Confirm"></aui:button>
     </aui:button-row>
     
      <portlet:renderURL var="loginURL">
         <portlet:param name="mvcPath" value="/html/login/view.jsp"></portlet:param>
         </portlet:renderURL>
     <aui:button type="submit" onClick="<%= loginURL.toString() %>" value="Logout"></aui:button>

</form>
</body>
</html>