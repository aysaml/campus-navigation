package cn.edu.lnpu.cns;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.edu.lnpu.cns.mapper")
public class CNSApplication {

	public static void main(String[] args) {
		SpringApplication.run(CNSApplication.class, args);
	}
}
