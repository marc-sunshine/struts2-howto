<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjr" uri="/struts-jquery-richtext-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Basic Struts 2 Application - Welcome</title>
		<sj:head jqueryui="true" jquerytheme="ui-lightness"/>
		<!-- <link rel="stylesheet" href="/xtest/struts/themes/ui-darkness/jquery-ui.css" type="text/css"/>  -->
		<style type="text/css">
			body, .ui-widget {
				font-family:Arial,Helvetica,sans-serif,Verdana;
				font-size:13px;
			}
		</style> 
	</head>
	<body>


		<h2>Dialog</h2>
		<p>
		    A simple Dialog with local content.
		</p>
		<sj:dialog id="mydialog" width="400" height="300" cssStyle="padding:10px;" title="Dialog with local content">
		  	huhu! Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
		</sj:dialog>
		
		
		<h3>Code:</h3>
		
		<pre>
&lt;sj:dialog id="mydialog" title="Dialog with local content"&gt;
  Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer ut neque. Vivamus nisi metus, 
  molestie vel, gravida in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin 
  viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
&lt;/sj:dialog&gt;
		</pre>
		
		
		
	<h3>Drag and Drop</h3>
	<p>
	    Drag and Drop with Remote and Effect Div's.
	</p>
    <strong>Div :</strong>
    <script type="text/javascript">
		$.subscribe('ondrop', function(event,data) {
	        $(event.originalEvent.ui.droppable).addClass('ui-state-highlight').find('p').html($(event.originalEvent.ui.draggable).attr('id')+' dropped!');
	        $(event.originalEvent.ui.draggable).find('p').html('I was dragged!');
	        alert("dragged!");
		});
    </script>
    <div class="draganddrop" style="width: 100%; height: 250px;">
	    <sj:div id="draggablenonvalid" draggable="true" cssClass="noaccept ui-widget-content ui-corner-all" cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
	        I'm draggable but can't be dropped..
	    </sj:div>

	    <sj:div id="draggable" draggable="true" draggableHandle="h3" draggableRevert="invalid" cssClass="accept ui-widget-content ui-corner-all" cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
	        <h3 class="ui-widget-header">Drag me to my target</h3>
	        <p></p>
	    </sj:div>

	    <s:url id="urlecho" action="echo"><s:param name="echo">I'm a remote div, drag me!</s:param></s:url>
	    <sj:div href="%{urlecho}" id="draggableremote"  draggable="true" indicator="indicator" cssClass="accept ui-widget-content ui-corner-all" cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;" >
            <img id="indicator" src="images/indicator.gif" alt="Loading..." style="display:none"/>
        </sj:div>

	    <sj:div id="droptarget" droppable="true" droppableOnDropTopics="ondrop" droppableActiveClass="ui-state-hover" droppableHoverClass="ui-state-active" droppableAccept=".accept" cssClass="ui-widget-content ui-corner-all" cssStyle="width: 220px; height: 220px; padding: 0.5em; float: left; margin: 10px;">
	        <p>Drop here</p>
	    </sj:div>
    </div>	
    
    <br clear="all" />
    
	<sjr:tinymce  id="richtextTinymceEditor" 
		name="echo" 
		rows="10" 
		cols="80" 
		width="800"
		editorTheme="advanced"
	/>    	

</body>
</html>