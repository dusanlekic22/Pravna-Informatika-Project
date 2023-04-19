package piproject.service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.springframework.stereotype.Service;

import piproject.dto.RBRDTO;

@Service
public class RBRService {

	public static String filePath = System.getProperty("user.dir").replace("\\piproject", "\\docs\\judgements.csv");

	public String rbr(RBRDTO rbrdto) {
		saveFacts(rbrdto);
		executeRBR();
		return export();
	}

	public boolean saveFacts(RBRDTO rbrdto) {
		try {
			BufferedWriter writer = new BufferedWriter(new FileWriter(filePath, true));
			writer.write("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n");
			writer.write("<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n");
			writer.write("    xmlns:rdfs=\"http://www.w3.org/2000/01/rdf-schema#\"\n");
			writer.write("    xmlns:xsd=\"http://www.w3.org/2001/XMLSchema#\"\n");
			writer.write("    xmlns:lc=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#\">\n");
			writer.write("    <lc:case rdf:about=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#case01\">\n");
			writer.write("        <lc:name>" + rbrdto.getName() + "</lc:name>\n");
			writer.write("		  <lc:defendant>" + rbrdto.getDefendant() + "</lc:defendant>");
			writer.write(" 		  <lc:fish>Fish</lc:fish>");
			writer.write("        <lc:have>" + rbrdto.getFishHas() + "</lc:have>");
			writer.write("        <lc:catches_in>" + rbrdto.getCatchesIn() + "</lc:catches_in>");
			writer.write("        <lc:catches_during>" + rbrdto.getCatchesDuring() + "</lc:catches_during>");
			writer.write("        <lc:uses>" + rbrdto.getUses() + "</lc:uses>");
			writer.write("        <lc:destroys_fish>" + rbrdto.isDestroysFish() + "</lc:destroys_fish>");
			writer.write("        <lc:causes>" + rbrdto.getCauses() + "</lc:causes>");
			writer.write(
					"        <lc:fish_number rdf:datatype=\"http://www.w3.org/2001/XMLSchema#integer\">2</lc:fish_number>");
			writer.write("    </lc:case>");
			writer.write("</rdf:RDF>");
			writer.close();
			return true;

		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	public void executeRBR() {
		String exePath = System.getProperty("user.dir").replace("\\piproject", "\\dr-device");
		System.out.println(exePath);
		ProcessBuilder pb = new ProcessBuilder(exePath + "\\clean.bat");
		pb.directory(new File(exePath));
		Process p;
		try {
			p = pb.start();
			p.waitFor();
		} catch (IOException | InterruptedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		pb = new ProcessBuilder(exePath + "\\start.bat");
		pb.directory(new File(exePath));
		try {
			p = pb.start();
			p.waitFor();
		} catch (IOException | InterruptedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	public String export() {
		return "";
	}

}
