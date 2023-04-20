package piproject.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
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

	public static String filePath = System.getProperty("user.dir").replace("\\piproject", "\\docs\\judgements.csv");

	public boolean addCase(CaseDescriptionDTO caseDescriptionDTO) {
		CaseDescription caseDescription = new CaseDescription(caseDescriptionDTO);

		try {
			BufferedReader br = new BufferedReader(new FileReader(filePath));
			String lastLine = "", line;
			while ((line = br.readLine()) != null) {
				// Doing some actions
				System.out.println("Line " + line);
				// Overwrite lastLine each time
				if (!line.equals(""))
					lastLine = line;
			}
			String[] values = lastLine.split(";");
			System.out.println("Lastline: " + lastLine);
			caseDescription.setId(Integer.parseInt(values[0]) + 1);
			br.close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			BufferedWriter writer = new BufferedWriter(new FileWriter(filePath, true));
			writer.write(caseDescription.getId() + ";");
			writer.write(caseDescription.getSud() + ";");
			writer.write(caseDescription.getPoslovniBroj() + ";");
			writer.write(caseDescription.getSudija() + ";");
			writer.write(caseDescription.getTuzilac() + ";");
			writer.write(caseDescription.getOkrivljeni() + ";");
			writer.write(caseDescription.getKrivicnoDeloZOSRA() + ";");
			writer.write(caseDescription.getKrivicnoDeloKZ() + ";");
			writer.write(caseDescription.getBrojRiba() + ";");
			writer.write(caseDescription.getVrstaPresude() + ";");
			for (int i = 0; i < caseDescription.getPrimenjeniPropisi().size(); i++) {
				writer.write(caseDescription.getPrimenjeniPropisi().get(i));
				if (i != caseDescription.getPrimenjeniPropisi().size() - 1)
					writer.write(",");
			}
			writer.write(";");
			writer.write(caseDescription.getPresuda());
			writer.write('\n');
			writer.write('\n');
			writer.close();
			return true;

		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	public List<CaseDescriptionDTO> getSimilarCases(CaseDescriptionDTO caseDescriptionDTO) {
		CbrApplication recommender = new CbrApplication();
		List<CaseDescriptionDTO> similarityDTOs = new ArrayList<>();
		try {
			recommender.configure();

			recommender.preCycle();

			CBRQuery query = new CBRQuery();
			CaseDescription caseDescription = new CaseDescription();

			caseDescription = new CaseDescription(caseDescriptionDTO);
			
			query.setDescription(caseDescription);

			recommender.cycle(query);

			recommender.postCycle();

			CaseDescriptionDTO caseDescriptionDTOReturn;

			for (RetrievalResult result : recommender.getEval()) {
				
				CaseDescription caseDescriptionReturn = (CaseDescription) result.get_case().getDescription();
				caseDescriptionDTOReturn = new CaseDescriptionDTO(caseDescriptionReturn.getId(),
						caseDescriptionReturn.getSud(), caseDescriptionReturn.getPoslovniBroj(),
						caseDescriptionReturn.getSudija(), caseDescriptionReturn.getTuzilac(),
						caseDescriptionReturn.getOkrivljeni(), caseDescriptionReturn.getKrivicnoDeloZOSRA(),
						caseDescriptionReturn.getKrivicnoDeloKZ(), caseDescriptionReturn.getBrojRiba(),
						caseDescriptionReturn.getVrstaPresude(), caseDescriptionReturn.getPrimenjeniPropisi(),
						caseDescriptionReturn.getPresuda(), result.getEval());

				similarityDTOs.add(caseDescriptionDTOReturn);
			}

			return similarityDTOs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return similarityDTOs;
	}

}
