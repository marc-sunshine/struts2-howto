package actions;

import java.util.HashMap;

public class IndexAction extends ActionMySupport {

	private static final long serialVersionUID = 1L;

	private HashMap<String, String> accordion = new HashMap<String, String>();
	private HashMap<String, String> checkboxlist = new HashMap<String,String>();
	private String message;
	
	public String execute() throws Exception { 
	    accordion.put("Section 1", "Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.");
	    accordion.put("Section 2", "Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In suscipit faucibus urna.");
	    accordion.put("Section 3", "Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.");
	    accordion.put("Section 4", "Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est. Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.");
	    
	    checkboxlist.put("1", "one");
	    checkboxlist.put("2", "two");
	    checkboxlist.put("3", "three");
	    checkboxlist.put("4", "four");
	    
	    setMessage("just a test...");
	    
	    return SUCCESS;
	}

	public HashMap<String, String> getAccordion() {
		return accordion;
	}

	public void setAccordion(HashMap<String, String> accordion) {
		this.accordion = accordion;
	}

	public HashMap<String, String> getCheckboxlist() {
		return checkboxlist;
	}

	public void setCheckboxlist(HashMap<String, String> checkboxlist) {
		this.checkboxlist = checkboxlist;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
