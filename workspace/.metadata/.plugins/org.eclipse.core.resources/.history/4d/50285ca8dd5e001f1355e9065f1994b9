package com.laptrinhjavaweb.api.admin;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class UploadFileAPI {

	private String uploadDir = "C:/Users/TUANTHANH/Desktop/JAVA-WEB-SPRING-MVC/workspace/spring-mvc/src/main/webapp/resources/image/";

	@PostMapping("/api/uploadFile")
	public ResponseEntity<?> uploadFile(@RequestParam("file") MultipartFile file) {
		if (file.isEmpty()) {
			return ResponseEntity.badRequest().body("File is empty");
		}
		try {
			String fileName = StringUtils.cleanPath(file.getOriginalFilename());
			Path path = Paths.get(uploadDir + File.separator + fileName);
			Files.createDirectories(path.getParent());
			Files.write(path, file.getBytes());

			String fileDowloadDir = "/image/" + fileName;
			return ResponseEntity.ok().body(new UploadResponse(fileDowloadDir));
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.status(500).body("Could not store the file. Error: " + e.getMessage());
		}

	}

	@DeleteMapping("/api/deleteFile")
	public String deleteFile(@RequestBody String fileDir) {
		return fileDir;

	}

	public class UploadResponse {

		private String filePath;

		public UploadResponse(String filePath) {
			this.filePath = filePath;
		}

		public String getFilePath() {
			return filePath;
		}

		public void setFilePath(String filePath) {
			this.filePath = filePath;
		}

	}

}
