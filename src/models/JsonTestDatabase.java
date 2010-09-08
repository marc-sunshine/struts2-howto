package models;

import java.util.HashMap;
import java.util.Map;

public class JsonTestDatabase {
	 
	private Map<String, String> databases = new HashMap<String, String>();
 
	public JsonTestDatabase(){
		databases.put("MySQL", "MySQL");
		databases.put("Oracle", "Oracle");
		databases.put("PostgreSQL", "PostgreSQL");
		databases.put("Microsoft SQL Server", "Microsoft SQL Server");
		databases.put("DB2", "DB2");
		databases.put("Others", "Others");
	}
 
	public String execute() {
		return "SUCCESS";
	}
 
	public Map<String, String> getDatabases() {
		return databases;
	}
 
	public void setDatabases(Map<String, String> databases) {
		this.databases = databases;
	}
}