package actions;

public class AutocompleterDiff extends ActionMySupport {

	private static final long serialVersionUID = 1L;
	private String yourDatabase;

	public String display() {
		return NONE;
	}

	public String getYourDatabase() {
		return yourDatabase;
	}

	public void setYourDatabase(String yourDatabase) {
		this.yourDatabase = yourDatabase;
	}

}



/*
<h1>Struts 2 autocompleter + JSON example</h1>
 
<s:form action="resultAction" namespace="/" method="POST" >
 
<s:url id="databaseList" action="databaseJSON" />
 
<sx:autocompleter label="What's your favorite Database Server?" 
href="%{databaseList}" name="yourFavDatabase" />
 
<s:submit value="submit" name="submit" />

 */