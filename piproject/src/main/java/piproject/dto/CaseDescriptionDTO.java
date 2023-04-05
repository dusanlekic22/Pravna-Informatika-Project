package piproject.dto;

import java.util.ArrayList;
import java.util.List;

public class CaseDescriptionDTO {

	private int id;
	private String sud;
	private String poslovniBroj;
	private String sudija;
	private String tuzilac;
	private String okrivljeni;
	private String krivicnoDelo;
	private int brojRiba;
	private String vrstaPresude;
	private List<String> primenjeniPropisi = new ArrayList<String>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSud() {
		return sud;
	}

	public void setSud(String sud) {
		this.sud = sud;
	}

	public String getPoslovniBroj() {
		return poslovniBroj;
	}

	public void setPoslovniBroj(String poslovniBroj) {
		this.poslovniBroj = poslovniBroj;
	}

	public String getSudija() {
		return sudija;
	}

	public void setSudija(String sudija) {
		this.sudija = sudija;
	}

	public String getTuzilac() {
		return tuzilac;
	}

	public void setTuzilac(String tuzilac) {
		this.tuzilac = tuzilac;
	}

	public String getOkrivljeni() {
		return okrivljeni;
	}

	public void setOkrivljeni(String okrivljeni) {
		this.okrivljeni = okrivljeni;
	}

	public String getKrivicnoDelo() {
		return krivicnoDelo;
	}

	public void setKrivicnoDelo(String krivicnoDelo) {
		this.krivicnoDelo = krivicnoDelo;
	}

	public int getBrojRiba() {
		return brojRiba;
	}

	public void setBrojRiba(int brojRiba) {
		this.brojRiba = brojRiba;
	}

	public String getVrstaPresude() {
		return vrstaPresude;
	}

	public void setVrstaPresude(String vrstaPresude) {
		this.vrstaPresude = vrstaPresude;
	}

	public List<String> getPrimenjeniPropisi() {
		return primenjeniPropisi;
	}

	public void setPrimenjeniPropisi(List<String> primenjeniPropisi) {
		this.primenjeniPropisi = primenjeniPropisi;
	}

	public CaseDescriptionDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

}
