package piproject.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import piproject.service.DocumentService;

@RestController
@RequestMapping(value = "/document", produces = MediaType.APPLICATION_JSON_VALUE)
@CrossOrigin
public class DocumentController {
	
	@Autowired
	DocumentService documentService;
	
	@GetMapping("/download/{docName}")
	public ResponseEntity<byte[]> generateQTI(@PathVariable String docName) {
		String filePathString = new File("..\\").getAbsolutePath() + "\\docs\\" + docName ;
		File file = new File(filePathString);
		byte[] blob = null;
		try {
			blob = Files.readAllBytes(file.toPath());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		MediaType mediaType = docName.endsWith("pdf") ? MediaType.APPLICATION_PDF : MediaType.APPLICATION_XML;
		return ResponseEntity.ok().contentLength(blob.length).contentType(mediaType)
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + docName).body(blob);
	}
	
	@GetMapping("/laws")
	public ResponseEntity<Set<String>> getLaws(){
		return new ResponseEntity<Set<String>>(documentService.getLaws(),HttpStatus.OK);
	}
	
	@GetMapping("/judgements")
	public ResponseEntity<Set<String>> getJudgements(){
		return new ResponseEntity<Set<String>>(documentService.getJudgements(),HttpStatus.OK);
	}

}
