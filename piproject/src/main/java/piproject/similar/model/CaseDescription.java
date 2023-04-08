package piproject.similar.model;

import java.util.ArrayList;
import java.util.List;

import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;

public class CaseDescription implements CaseComponent {

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
	

	public CaseDescription(int id, String sud, String poslovniBroj, String sudija, String tuzilac, String okrivljeni,
			String krivicnoDeloZOSRA, String krivicnoDeloKZ, int brojRiba, String vrstaPresude,
			List<String> primenjeniPropisi) {
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
	}

	public CaseDescription() {
		super();
		// TODO Auto-generated constructor stub
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

	@Override
	public Attribute getIdAttribute() {
		return new Attribute("id", this.getClass());
	}

	public int getBrojRiba() {
		return brojRiba;
	}

	public void setBrojRiba(int brojRiba) {
		this.brojRiba = brojRiba;
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

	@Override
	public String toString() {
		return "CaseDescription [id=" + id + ", sud=" + sud + ", poslovniBroj=" + poslovniBroj + ", sudija=" + sudija
				+ ", tuzilac=" + tuzilac + ", okrivljeni=" + okrivljeni + ", krivicnoDeloZOSRA=" + krivicnoDeloZOSRA
				+ ", krivicnoDeloKZ=" + krivicnoDeloKZ + ", brojRiba=" + brojRiba + ", vrstaPresude=" + vrstaPresude
				+ ", primenjeniPropisi=" + primenjeniPropisi + "]";
	}

}
