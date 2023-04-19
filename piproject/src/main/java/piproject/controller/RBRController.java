package piproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import piproject.dto.RBRDTO;
import piproject.service.RBRService;

@RestController
@RequestMapping(value = "/rbr", produces = MediaType.APPLICATION_JSON_VALUE)
@CrossOrigin
public class RBRController {

	@Autowired
	RBRService rbrService;
	
	@PostMapping("/reasoning")
	public ResponseEntity<String> getReasoning(
			@RequestBody RBRDTO RBRDTO) {
		ObjectMapper objectMapper = new ObjectMapper(); // Jackson library
        try {
            String responseJson = objectMapper.writeValueAsString(rbrService.rbr(RBRDTO));
            return ResponseEntity.ok(responseJson);
        } catch (JsonProcessingException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error generating JSON response");
        }
//		String response = rbrService.rbr(RBRDTO);
//		return new ResponseEntity<String>(response, HttpStatus.OK);
	}
}
