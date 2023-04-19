package piproject.dto;

import java.util.ArrayList;
import java.util.List;

public class CBRDTO {

	List<CaseDescriptionDTO> caseDescriptionDTOs = new ArrayList<>();
	String judgement;

	public List<CaseDescriptionDTO> getCaseDescriptionDTOs() {
		return caseDescriptionDTOs;
	}

	public void setCaseDescriptionDTOs(List<CaseDescriptionDTO> caseDescriptionDTOs) {
		this.caseDescriptionDTOs = caseDescriptionDTOs;
	}

	public String getJudgement() {
		return judgement;
	}

	public void setJudgement(String judgement) {
		this.judgement = judgement;
	}

	public CBRDTO(List<CaseDescriptionDTO> caseDescriptionDTOs, String judgement) {
		super();
		this.caseDescriptionDTOs = caseDescriptionDTOs;
		this.judgement = judgement;
	}

}
