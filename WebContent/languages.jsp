<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjr" uri="/struts-jquery-richtext-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>languages autocompleter</title>
		<sj:head jqueryui="true" jquerytheme="ui-lightness"/>
		<link rel="stylesheet" href="css/my.css" type="text/css"/>
	</head>
	<body>
		
		<h3>local autocompleter: </h3>
		<sj:autocompleter id="languages" list="%{languages}"/>

		
		<h3>customer autocompleter:</h3>
		<s:url id="remoteurl" action="jsonlanguages"/> 
		<sj:autocompleter 
		    id="languages2" 
		    href="%{remoteurl}" 
		    delay="50" 
		    loadMinimumCount="2"
		/>
		
		<h3>select box style:</h3>
		<sj:autocompleter 
		        id="customers" 
		        name="echo" 
		        list="%{customers}" 
		        listValue="name" 
		        listKey="id" 
		        selectBox="true"
		/>


		<p>&nbsp;</p>		
		<h3>button test:</h3>

		<sj:a id="ajaxlink"
				indicator="true" 
                indicator="indicator" 
                button="true" 
                buttonIcon="ui-icon-refresh"
        >
                Dummy Button (refresh)
        </sj:a> 
		
		<p>&nbsp;</p> 
		<h3>progressbar</h3>


	    <sj:progressbar id="progressbarchange" cssStyle="height:10px;" value="21" onChangeTopics="mychangetopic"/>
	    <br />
	    <sj:div id="result_div" cssStyle="height:25px;">result</sj:div>
	    <sj:a href="#" button="true" onClickTopics="myclicktopic">change value</sj:a>

		<script type="text/javascript">
			 $.subscribe('mychangetopic', function(event,data) {
		        // alert('value changed to : ' + $("#progressbarchange").progressbar('option', 'value') );
		        $("#result_div").html ( 'value changed to : ' + $("#progressbarchange").progressbar('option', 'value') );
		    });
		    $.subscribe('myclicktopic', function(event,data) {
		         $("#progressbarchange").progressbar( 'value' , parseInt( Math.random() * ( 90 ) ) );
		    });
    	</script>

		
	</body>
</html>