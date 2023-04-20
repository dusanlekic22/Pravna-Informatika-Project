package piproject.similar;

import java.io.BufferedReader;
import java.io.FileReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseBaseFilter;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.exception.InitializingException;
import piproject.similar.model.CaseDescription;

public class CsvConnector implements Connector {

	@Override
	public Collection<CBRCase> retrieveAllCases() {
		LinkedList<CBRCase> cases = new LinkedList<CBRCase>();

		try {
			BufferedReader br = new BufferedReader(
					new FileReader(System.getProperty("user.dir").replace("\\piproject", "\\docs\\judgements.csv")));
			String line = "";
			while ((line = br.readLine()) != null) {
				if (line.startsWith("id") || (line.length() == 0))
					continue;
				String[] values = line.split(";");

				CBRCase cbrCase = new CBRCase();
				CaseDescription caseDescription = new CaseDescription();
				caseDescription.setId(Integer.parseInt(values[0]));
				caseDescription.setSud(values[1]);
				caseDescription.setPoslovniBroj(values[2]);
				caseDescription.setSudija(values[3]);
				caseDescription.setTuzilac(values[4]);
				caseDescription.setOkrivljeni(values[5]);
				caseDescription.setKrivicnoDeloZOSRA(values[6]);
				caseDescription.setKrivicnoDeloKZ(values[7]);
				caseDescription.setBrojRiba(Integer.parseInt(values[8]));
				caseDescription.setVrstaPresude(values[9]);
				caseDescription.setPrimenjeniPropisi(Arrays.asList(values[10].split(",")));
				List<String> podeljeniPropisi = new ArrayList<>();
				for (String propis : caseDescription.getPrimenjeniPropisi()) {
					for (String propisSplit : propis.split(" i ")) {
						podeljeniPropisi.add(propisSplit);
					}
				}
				caseDescription.setPrimenjeniPropisi(podeljeniPropisi);
				cbrCase.setDescription(caseDescription);
				cases.add(cbrCase);
			}
			br.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cases;
	}

	@Override
	public Collection<CBRCase> retrieveSomeCases(CaseBaseFilter arg0) {
		return null;
	}

	@Override
	public void storeCases(Collection<CBRCase> arg0) {
	}

	@Override
	public void close() {
	}

	@Override
	public void deleteCases(Collection<CBRCase> arg0) {
	}

	@Override
	public void initFromXMLfile(URL arg0) throws InitializingException {
	}

}