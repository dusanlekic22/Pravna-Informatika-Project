package piproject.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.springframework.stereotype.Service;

@Service
public class DocumentService {
	
	public static String filePathString = new File("..\\").getAbsolutePath() + "\\docs\\";
	
	public Set<String> listFilesUsingFilesList(String dir) throws IOException {
		try (Stream<Path> stream = Files.list(Paths.get(dir))) {
			return stream.filter(file -> !Files.isDirectory(file)).map(Path::getFileName).map(Path::toString)
					.collect(Collectors.toSet());
		}
	}
	
	public Set<String> getLaws() {
		Set<String> laws = new HashSet<>();
		try {
			Set<String> files = new HashSet<>(listFilesUsingFilesList(filePathString));
			for (String file : files) {
				if(file.toLowerCase().contains("zakon") && (file.endsWith(".pdf") || file.endsWith(".xml")))
					laws.add(file);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return laws;
	}
	
	public Set<String> getJudgements() {
		Set<String> judgements = new HashSet<>();
		try {
			Set<String> files = new HashSet<>(listFilesUsingFilesList(filePathString));
			for (String file : files) {
				if(file.startsWith("K_") && (file.endsWith(".pdf") || file.endsWith(".xml")))
					judgements.add(file);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return judgements;
	}

}
