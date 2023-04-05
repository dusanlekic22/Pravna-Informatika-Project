package piproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import piproject.dto.CaseDescriptionDTO;
import piproject.service.SimilarityService;

@RestController
@RequestMapping(value = "/similarity", produces = MediaType.APPLICATION_JSON_VALUE)
@CrossOrigin
public class SimilarityController {
	
	@Autowired
	SimilarityService similarityService;
	
	@PostMapping("/case")
    public ResponseEntity<List<CaseDescriptionDTO>> getSimilarPCs(@RequestBody CaseDescriptionDTO caseDescriptionDTO){
        List<CaseDescriptionDTO> response = similarityService.getSimilarCases(caseDescriptionDTO);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
	

}
