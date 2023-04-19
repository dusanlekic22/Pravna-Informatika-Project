package piproject.dto;

public class RBRDTO {
	private String name;
	private String defendant;
	private String fishHas;
	private String catchesIn;
	private String catchesDuring;
	private String uses;
	private String destroysFish;
	private String causes;
	private int fishNumber;

	public RBRDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDefendant() {
		return defendant;
	}

	public void setDefendant(String defendant) {
		this.defendant = defendant;
	}

	public String getFishHas() {
		return fishHas;
	}

	public void setFishHas(String fishHas) {
		this.fishHas = fishHas;
	}

	public String getCatchesIn() {
		return catchesIn;
	}

	public void setCatchesIn(String catchesIn) {
		this.catchesIn = catchesIn;
	}

	public String getCatchesDuring() {
		return catchesDuring;
	}

	public void setCatchesDuring(String catchesDuring) {
		this.catchesDuring = catchesDuring;
	}

	public String getUses() {
		return uses;
	}

	public void setUses(String uses) {
		this.uses = uses;
	}

	public String getCauses() {
		return causes;
	}

	public void setCauses(String causes) {
		this.causes = causes;
	}

	public int getFishNumber() {
		return fishNumber;
	}

	public void setFishNumber(int fishNumber) {
		this.fishNumber = fishNumber;
	}

	public String getDestroysFish() {
		return destroysFish;
	}

	public void setDestroysFish(String destroysFish) {
		this.destroysFish = destroysFish;
	}

	public RBRDTO(String name, String defendant, String fishHas, String catchesIn, String catchesDuring, String uses,
			String destroysFish, String causes, int fishNumber) {
		super();
		this.name = name;
		this.defendant = defendant;
		this.fishHas = fishHas;
		this.catchesIn = catchesIn;
		this.catchesDuring = catchesDuring;
		this.uses = uses;
		this.destroysFish = destroysFish;
		this.causes = causes;
		this.fishNumber = fishNumber;
	}


}
