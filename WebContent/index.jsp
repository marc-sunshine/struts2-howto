<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
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
		<h1>Welcome To Struts 2 with jQuery :)</h1>
		
		<h3>results: <s:property value="message"/></h3>
		
		<sj:tabbedpanel id="localtabs">
			<sj:tab id="tab1" target="tone"   label="Ajax Form Submit"/>
			<sj:tab id="tab2" target="ttwo"   label="Datepicker"/>
			<sj:tab id="tab3" target="tthree" label="Accordion"/>
			<sj:tab id="tab4" target="tfour"  label="Local Tab Four"/>
			<div id="tone">
				<h2>Form submission with AJAX</h2>
					<p>
					    Submit a form with AJAX.
					</p>
				    <h3>Result Div :</h3>
					<div id="formResult" class="result ui-widget-content ui-corner-all">Submit form bellow.</div>

					<div style="height:20px;">
						<img id="indicator" src="images/indicator.gif" alt="Loading..." style="display:none"/>
					</div>
				    
				    <s:form id="form" action="echo" theme="simple" cssClass="yform">
				        <fieldset>
				            <legend>AJAX Form</legend>
					        <div class="type-text">
					            <label for="echo">Echo: </label>
					            <s:textfield id="echo" name="echo" value="Hello World!!!"/>
					        </div>
					        <div class="type-button">
					            <sj:submit targets="formResult" value="AJAX Submit" indicator="indicator"/>
								<s:url id="simpleecho" value="/simpleecho.action"/>
					            <sj:submit href="%{simpleecho}" targets="formResult" value="AJAX Submit 2" indicator="indicator"/>
					        </div>
				        </fieldset>
				    </s:form>

					  <h3>Code:</h3>
<pre>
&lt;s:form id=&quot;form&quot; action=&quot;echo&quot; theme=&quot;simple&quot; cssClass=&quot;yform&quot;&gt;
     &lt;fieldset&gt;
         &lt;legend&gt;AJAX Form&lt;/legend&gt;
     &lt;div class=&quot;type-text&quot;&gt;
         &lt;label for=&quot;echo&quot;&gt;Echo: &lt;/label&gt;
         &lt;s:textfield id=&quot;echo&quot; name=&quot;echo&quot; value=&quot;Hello World!!!&quot;/&gt;
     &lt;/div&gt;
     &lt;div class=&quot;type-button&quot;&gt;
         &lt;sj:submit targets=&quot;formResult&quot; value=&quot;AJAX Submit&quot; indicator=&quot;indicator&quot;/&gt;
         &lt;s:url id=&quot;simpleecho&quot; value=&quot;/simpleecho.action&quot;/&gt;
         &lt;sj:submit href="%{simpleecho}" targets=&quot;formResult&quot; value=&quot;AJAX Submit 2&quot; indicator=&quot;indicator&quot;/&gt;
     &lt;/div&gt;
     &lt;/fieldset&gt;
&lt;/s:form&gt;
</pre>
			</div>
			<div id="ttwo">
			    <h2>Datepicker</h2>
			    <p>
			        A simple Datepicker
			    </p>
			    <s:form id="form" theme="xhtml">
			      <sj:datepicker id="date0" label="Select a Date" />
			      <sj:datepicker value="%{dateValue}" id="date1" name="date1" label="Date Value from Action" />
			      <sj:datepicker id="date2" name="nameValue" label="Date Value by Name" />
			      <sj:datepicker value="today" id="date3" name="date3" displayFormat="dd.mm.yy" label="Today" />
			      <sj:datepicker value="yesterday" id="date4" name="date4" displayFormat="mm/dd/yy" label="Yesterday" />
			      <sj:datepicker value="tomorrow" id="date5" name="date5" displayFormat="DD, d MM yy" label="Tomorrow" />
			      <sj:datepicker value="2004-08-14" id="date6" name="date6" displayFormat="d M, yy" label="String Value" />
			    </s:form>
			  
			    <h3>Code:</h3>
			    <pre>
&lt;s:form id=&quot;form&quot; theme=&quot;xhtml&quot;&gt;
  &lt;sj:datepicker id=&quot;date0&quot; label=&quot;Select a Date&quot; /&gt;
  &lt;sj:datepicker value=&quot;%{dateValue}&quot; id=&quot;date1&quot; name=&quot;date1&quot; label=&quot;Date Value from Action&quot; /&gt;
  &lt;sj:datepicker id=&quot;date2&quot; name=&quot;nameValue&quot; label=&quot;Date Value by Name&quot; /&gt;
  &lt;sj:datepicker value=&quot;today&quot; id=&quot;date3&quot; name=&quot;date3&quot; displayFormat=&quot;dd.mm.yy&quot; label=&quot;Today&quot; /&gt;
  &lt;sj:datepicker value=&quot;yesterday&quot; id=&quot;date4&quot; name=&quot;date4&quot; displayFormat=&quot;mm/dd/yy&quot; label=&quot;Yesterday&quot; /&gt;
  &lt;sj:datepicker value=&quot;tomorrow&quot; id=&quot;date5&quot; name=&quot;date5&quot; displayFormat=&quot;DD, d MM yy&quot; label=&quot;Tomorrow&quot; /&gt;
  &lt;sj:datepicker value=&quot;2004-08-14&quot; id=&quot;date6&quot; name=&quot;date6&quot; displayFormat=&quot;d M, yy&quot; label=&quot;String Value&quot; /&gt;
&lt;/s:form&gt;
			    </pre>
			</div>
			<div id="tthree">
			    <h2>Accordion</h2>
			    <p>
			        A simple Accordion...
			    </p>
			    <sj:accordion list="accordion" collapsible="true" animated="false" cssClass="list"/>

				<br />
			    <h3>Code in JSP:</h3>
			    <pre>
&lt;sj:accordion list="accordion" /&gt;
			    </pre>
			    <h3>Code in Action:</h3>
			    <pre>
private Map&lt;String, String&gt; accordion;

public String execute() throws Exception {
    accordion = new HashMap&lt;String, String&gt;();
    accordion.put("Section 1", "Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.");
    accordion.put("Section 2", "Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In suscipit faucibus urna.");
    accordion.put("Section 3", "Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.");
    accordion.put("Section 4", "Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est. Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.");
    return SUCCESS;
}

public Map&lt;String, String&gt; getAccordion() {
    return accordion;
}
			    </pre>				
			</div>
			<div id="tfour">

				<h2>languages</h2>
				<a href="<s:url action='languages'/>">Go to languages demo action here</a>
				
				
			</div>
		</sj:tabbedpanel>
		
		<p>
			<a href="<s:url action='modal'/>">Modal box</a>
			<br />
			<a href="<s:url action='hello'/>">go to the infamous Hello World</a>
		</p>
		
		<h3>checkboxlist:</h3>
		<sj:checkboxlist draggable="true" list="%{checkboxlist}" name="checkboxlist"/>
		
	</body>
</html>