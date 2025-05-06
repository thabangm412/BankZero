package za.co.bankzero.bankzero.xray;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.core.env.StandardEnvironment;

@Configuration
public class EnvironmentConfig {
    @Bean
    public Environment environment() {
        return new StandardEnvironment(); // You can choose the appropriate Environment implementation.
    }
}
