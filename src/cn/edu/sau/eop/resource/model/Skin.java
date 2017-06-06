package cn.edu.sau.eop.resource.model;

/**
 */
public class Skin extends Resource {
	private String skinname;
	public String getSkinname() {
		return skinname;
	}

	public void setSkinname(String skinname) {
		this.skinname = skinname;
	}

	private String path;
	private String thumb = "preview.png";
	

	public String getThumb() {
		return thumb;
	}

	public void setThumb(String thumb) {
		this.thumb = thumb;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	

}
