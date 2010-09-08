package actions;

import java.util.*;

public class JsonSample<ListValue> extends ActionMySupport {

	  private static final long   serialVersionUID = -2223948287805083119L;
	  private List<String>        languageList;
	  private List<ListValue>     languageObjList;
	  private Map<String, String> languageMap;
	  private List<String>        reloadList;
	  private String              language;


	  public String execute()
	  {

	    languageList = new ArrayList<String>();
	    languageObjList = new ArrayList<ListValue>();
	    languageMap = new HashMap<String, String>();

	    languageList.add("Java");
	    languageList.add("PHP");
	    languageList.add("C#");

	    languageMap.put("J", "Java");
	    languageMap.put("P", "PHP");
	    languageMap.put("C", "C#");

/*	    
	    languageObjList.add(new ListValue("J", "Java"));
	    languageObjList.add(new ListValue("P", "PHP"));
	    languageObjList.add(new ListValue("C", "C#"));
*/	    
	    
	    reloadList = new ArrayList<String>();
	    if (language != null && language.equalsIgnoreCase("J"))
	    {
	      reloadList.add("Struts2");
	      reloadList.add("MyFaces");
	      reloadList.add("Tapestry");
	    }
	    else if (language != null && language.equalsIgnoreCase("P"))
	    {
	      reloadList.add("CakePHP");
	      reloadList.add("Symfony");
	      reloadList.add("Zend");
	    }
	    else if (language != null && language.equalsIgnoreCase("C"))
	    {
	      reloadList.add("NStruts");
	      reloadList.add("ProMesh.NET");
	      reloadList.add("Websharp");
	    }

	    return SUCCESS;
	  }

	  public String getJSON()
	  {
	    return execute();
	  }

	  public List<String> getLanguageList()
	  {
	    return languageList;
	  }

	  public Map<String, String> getLanguageMap()
	  {
	    return languageMap;
	  }

	  public List<ListValue> getLanguageObjList()
	  {
	    return languageObjList;
	  }

	  public List<String> getReloadList()
	  {
	    return reloadList;
	  }

	  public void setLanguage(String language)
	  {
	    this.language = language;
	  }
	}
