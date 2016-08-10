package imageboard.bean;

public class ImageboardDTO {
	private int seq;
	private String imageId;
	private String imageName;
	private int imagePrice;
	private int imageQty;
	private String imageContent;
	private String image1;
	private String logtime;
	private String image2;//오라클은 중간에 못끼니 이렇게 아래 껴야함
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getImageId() {
		return imageId;
	}
	public void setImageId(String imageId) {
		this.imageId = imageId;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public int getImagePrice() {
		return imagePrice;
	}
	public void setImagePrice(int imagePrice) {
		this.imagePrice = imagePrice;
	}
	public int getImageQty() {
		return imageQty;
	}
	public void setImageQty(int imageQty) {
		this.imageQty = imageQty;
	}
	public String getImageContent() {
		return imageContent;
	}
	public void setImageContent(String imageContent) {
		this.imageContent = imageContent;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getLogtime() {
		return logtime;
	}
	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
}
