package piproject.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import piproject.dto.CaseDescriptionDTO;
import piproject.similar.CbrApplication;
import piproject.similar.model.CaseDescription;

@Service
public class SimilarityService {

	public List<CaseDescriptionDTO> getSimilarCases(CaseDescriptionDTO caseDescriptionDTO) {
		CbrApplication recommender = new CbrApplication();
		List<CaseDescriptionDTO> similarityDTOs = new ArrayList<>();
		try {
			recommender.configure();

			recommender.preCycle();

			CBRQuery query = new CBRQuery();
			CaseDescription caseDescription = new CaseDescription();
			
			caseDescription.setKrivicnoDeloZOSRA("čl. 289 st. 3 KZ");
			caseDescription.setKrivicnoDeloKZ("čl. 289 st. 3 KZ");
			List<String> primenjeniPropisi = new ArrayList();
			primenjeniPropisi.add("čl. 55 st. 3 tac. 15 ZOBSNP");
			primenjeniPropisi.add("čl. 43 st. 1 ZOBSNP");
			caseDescription.setPrimenjeniPropisi(primenjeniPropisi);
			caseDescription.setBrojRiba(2);

			query.setDescription(caseDescription);

			recommender.cycle(query);

			recommender.postCycle();
			
			CaseDescriptionDTO caseDescriptionDTOReturn;
			
			for (RetrievalResult result : recommender.getEval()) {

				CaseDescription caseDescriptionReturn = (CaseDescription) result.get_case().getDescription();
				caseDescriptionDTOReturn = new CaseDescriptionDTO(
						caseDescriptionReturn.getId(),
						caseDescriptionReturn.getSud(),
						caseDescriptionReturn.getPoslovniBroj(),
						caseDescriptionReturn.getSudija(),
						caseDescriptionReturn.getTuzilac(),
						caseDescriptionReturn.getOkrivljeni(),
						caseDescriptionReturn.getKrivicnoDeloZOSRA(),
						caseDescriptionReturn.getKrivicnoDeloKZ(),
						caseDescriptionReturn.getBrojRiba(),
						caseDescriptionReturn.getVrstaPresude(),
						caseDescriptionReturn.getPrimenjeniPropisi(),
						result.getEval());

				similarityDTOs.add(caseDescriptionDTOReturn);
			}

			return similarityDTOs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return similarityDTOs;
	}

}
