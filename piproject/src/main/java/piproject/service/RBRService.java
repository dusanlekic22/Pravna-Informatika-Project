package piproject.service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import piproject.dto.RBRDTO;

@Service
public class RBRService {

	public String rbr(RBRDTO rbrdto) {
		saveFacts(rbrdto);
		executeRBR();
		return readExport();
	}

	public boolean saveFacts(RBRDTO rbrdto) {
		String filePath = System.getProperty("user.dir").replace("\\piproject", "\\dr-device\\facts.rdf");
		try {
			BufferedWriter writer = new BufferedWriter(new FileWriter(filePath, false));
			writer.write("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n");
			writer.write("<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n");
			writer.write("    xmlns:rdfs=\"http://www.w3.org/2000/01/rdf-schema#\"\n");
			writer.write("    xmlns:xsd=\"http://www.w3.org/2001/XMLSchema#\"\n");
			writer.write("    xmlns:lc=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#\">\n");
			writer.write("    <lc:case rdf:about=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#case01\">\n");
			writer.write("        <lc:name>" + rbrdto.getName() + "</lc:name>\n");
			writer.write("		  <lc:defendant>" + rbrdto.getDefendant() + "</lc:defendant>\n");
			writer.write(" 		  <lc:fish>Fish</lc:fish>\n");
			writer.write("        <lc:have>" + rbrdto.getFishHas() + "</lc:have>\n");
			writer.write("        <lc:catches_in>" + rbrdto.getCatchesIn() + "</lc:catches_in>\n");
			writer.write("        <lc:catches_during>" + rbrdto.getCatchesDuring() + "</lc:catches_during>\n");
			writer.write("        <lc:uses>" + rbrdto.getUses() + "</lc:uses>\n");
			writer.write("        <lc:destroys_fish>" + rbrdto.getDestroysFish() + "</lc:destroys_fish>\n");
			writer.write("        <lc:causes>" + rbrdto.getCauses() + "</lc:causes>\n");
			writer.write("        <lc:fish_number rdf:datatype=\"http://www.w3.org/2001/XMLSchema#integer\">"
					+ rbrdto.getFishNumber() + "</lc:fish_number>\n");
			writer.write("    </lc:case>\n");
			writer.write("</rdf:RDF>\n");
			writer.close();
			return true;

		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	public void executeRBR() {
		String exePath = System.getProperty("user.dir").replace("\\piproject", "\\dr-device");
		ProcessBuilder pb = new ProcessBuilder(exePath + "\\start.bat");
		pb.directory(new File(exePath));
		try {
			Process p = pb.start();
			p.waitFor();
		} catch (IOException | InterruptedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	private String readExport() {
		StringBuilder ret = new StringBuilder();
		File f = new File(System.getProperty("user.dir").replace("\\piproject", "\\dr-device\\export.rdf"));
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			factory.setNamespaceAware(true);
			DocumentBuilder documentBuilder = factory.newDocumentBuilder();
			Document document = documentBuilder.parse(f);
			Node n = document.getChildNodes().item(1);
			NodeList nodeList = n.getChildNodes();

			for (int i = 0; i < nodeList.getLength(); ++i) {
				Node node = nodeList.item(i);
				if (node.getNodeName().contains("export")
						&& node.getTextContent().contains("defeasibly-proven-positive")) {
					String nodeName = node.getNodeName().split(":")[1];
					String childNodeName = node.getChildNodes().item(1).getNodeName().split(":")[1];
					String childNodeText = node.getChildNodes().item(1).getTextContent();
					ret.append(nodeName).append(": ").append(childNodeName).append(" = ").append(childNodeText)
							.append(", ");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(ret);
		ret.setLength(ret.length() - 2);
		String judgement = ret.toString();
		judgement = judgement.replace("max_imprisonment_months: value = 6", "kazna od maksimalno 6 meseci zatvora");
		judgement = judgement.replace("max_imprisonment_months: value = 6", "kazna od maksimalno 3 godine zatvora");
		judgement = judgement.replace("illegal_fishing_lvl2:","Nelegalno pecanje drugog stepena:");
		judgement = judgement.replace("illegal_fishing_lvl1:","Nelegalno pecanje prvog stepena:");
		judgement = judgement.replace("to_pay_min: value = 500","kazna sa minimalnom sumom od 500e");
		judgement = judgement.replace("to_pay_max: value = 2000","kazna sa maksimalnom sumom od 2000e");
		judgement = judgement.replace("defendant = ","Okrivljeni : ");
		judgement = judgement.concat(" ili rad u javnom interesu");
		return judgement;
	}

}
