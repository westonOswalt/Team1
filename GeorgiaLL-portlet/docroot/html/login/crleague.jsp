<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<script src="http://cdn.alloyui.com/3.0.1/aui/aui-min.js"></script>
<link href="http://cdn.alloyui.com/3.0.1/aui-css/css/bootstrap.min.css" rel="stylesheet"></link>
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
            <select id="divNumber" onchange="javascript:add();">
            <div id="divisionDropdown" class="dropdown" name="divisionNumber">
			  <button id="myTrigger" class="btn btn-default dropdown-toggle" type="button">
			    <span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu" name="divisionMenu">
			  	<option>
			    <li><a value="1" href="#">1</a></li>
			    </option>
			    <option>
			    <li><a value="2" href="#">2</a></li>
			    </option>
			    <option>
			    <li><a value="3" href="#">3</a></li>
			    </option>
			  </ul>
			</div>
			</select>
			
			<script>
			YUI().use(
			  'aui-dropdown',
			  function(Y) {
			    new Y.Dropdown(
			      {
			        boundingBox: '#divisionDropdown',
			        trigger: '#myTrigger'
			      }
			    ).render();
			  }
			);
			</script>
			
			<script type="text/javascript"> 
			function add()
			{
			var contentID = document.getElementById('content'); 
			var s1 = document.getElementById("divNumber").value;
			var contentID = document.getElementById('content'); 
			var i;
				for(i = 0; i < s1; i++)
					{
					var newTBDiv = document.createElement('div'); 
					newTBDiv.setAttribute('id','strText'+ i); 
					newTBDiv.innerHTML = "Student"+i+": <input type= 'text' id='"+i + "' name='Parameter"+ i + "'/>"; 
					contentID.appendChild(newTBDiv); 
					}
			}
			</script>
			
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
<div id="content"></div> 