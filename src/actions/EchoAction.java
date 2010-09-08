package actions;

public class EchoAction extends ActionMySupport {

	private static final long serialVersionUID = 1L;
	
	private String echo = "";

	public String execute() throws Exception {
		return SUCCESS;
	}

	public String getEcho() {
		return echo;
	}

	public void setEcho(String echo) {
		this.echo = echo;
	}

}