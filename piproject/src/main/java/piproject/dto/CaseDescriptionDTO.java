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
	private String krivicnoDeloZOSRA;
	private String krivicnoDeloKZ;
	private int brojRiba;
	private String vrstaPresude;
	private List<String> primenjeniPropisi = new ArrayList<String>();
	private String presuda;

	double similarityValue;

	public CaseDescriptionDTO(int id, String sud, String poslovniBroj, String sudija, String tuzilac, String okrivljeni,
			String krivicnoDeloZOSRA, String krivicnoDeloKZ, int brojRiba, String vrstaPresude,
			List<String> primenjeniPropisi, String presuda, double similarityValue) {
		super();
		this.id = id;
		this.sud = sud;
		this.poslovniBroj = poslovniBroj;
		this.sudija = sudija;
		this.tuzilac = tuzilac;
		this.okrivljeni = okrivljeni;
		this.krivicnoDeloZOSRA = krivicnoDeloZOSRA;
		this.krivicnoDeloKZ = krivicnoDeloKZ;
		this.brojRiba = brojRiba;
		this.vrstaPresude = vrstaPresude;
		this.primenjeniPropisi = primenjeniPropisi;
		this.presuda = presuda;
		this.similarityValue = similarityValue;
	}

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

	public double getSimilarityValue() {
		return similarityValue;
	}

	public void setSimilarityValue(double similarityValue) {
		this.similarityValue = similarityValue;
	}

	public String getKrivicnoDeloZOSRA() {
		return krivicnoDeloZOSRA;
	}

	public void setKrivicnoDeloZOSRA(String krivicnoDeloZOSRA) {
		this.krivicnoDeloZOSRA = krivicnoDeloZOSRA;
	}

	public String getKrivicnoDeloKZ() {
		return krivicnoDeloKZ;
	}

	public void setKrivicnoDeloKZ(String krivicnoDeloKZ) {
		this.krivicnoDeloKZ = krivicnoDeloKZ;
	}

	public String getPresuda() {
		return presuda;
	}

	public void setPresuda(String presuda) {
		this.presuda = presuda;
	}

}
