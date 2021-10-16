package doseo.command;

public class ReviewCommand {
	private String detail;
	private String rate;
	
	public ReviewCommand() {}
	
	public ReviewCommand(String detail, String rate) {
		super();
		this.detail = detail;
		this.rate = rate;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}
	
	
	
}
