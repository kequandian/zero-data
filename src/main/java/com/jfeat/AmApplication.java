package com.jfeat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

import javax.sql.DataSource;
import java.sql.SQLException;

/**
 * SpringBoot方式启动类
 *
 * @author Admin
 * @Date 2017/5/21 12:06
 */
@SpringBootApplication
@EnableScheduling
public class AmApplication implements CommandLineRunner {

    protected final static Logger logger = LoggerFactory.getLogger(AmApplication.class);

    @Autowired
    DataSource dataSource;

    @Override
    public void run(String... arg0) throws Exception {
        System.out.println("DATASOURCE = " + dataSource);
    }

    public static void main(String[] args) throws SQLException {
        SpringApplication.run(AmApplication.class, args);
        logger.info("Statistic is success!");

    }
}
