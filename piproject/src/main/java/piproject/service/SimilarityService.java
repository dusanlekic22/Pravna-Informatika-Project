package piproject.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import piproject.dto.CaseDescriptionDTO;
import piproject.similar.CbrApplication;
import piproject.similar.model.CaseDescription;

@Service
public class SimilarityService {

	public List<CaseDescriptionDTO> getSimilarCases(CaseDescriptionDTO caseDescriptionDTO) {
		StandardCBRApplication recommender = new CbrApplication();
		try {
			recommender.configure();

			recommender.preCycle();

			CBRQuery query = new CBRQuery();
			CaseDescription caseDescription = new CaseDescription();

			caseDescription.setKrivicnoDelo("cl. 289 st. 3 KZ");
			List<String> primenjeniPropisi = new ArrayList();
			primenjeniPropisi.add("cl. 55 st. 3 tac. 15 ZOBSNP");
			primenjeniPropisi.add("cl. 43 st. 1 ZOBSNP");
			caseDescription.setPrimenjeniPropisi(primenjeniPropisi);
			caseDescription.setBrojRiba(2);

			query.setDescription(caseDescription);

			recommender.cycle(query);

			recommender.postCycle();
			return new ArrayList<CaseDescriptionDTO>();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
