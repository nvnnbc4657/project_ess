package com.ess.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//DataSource 에러 수정 코드
//@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
public class ProjectEssApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjectEssApplication.class, args);
	}

}
