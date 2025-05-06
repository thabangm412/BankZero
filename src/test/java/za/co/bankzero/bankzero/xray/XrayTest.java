package za.co.bankzero.bankzero.xray;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public  class XrayTest {
    private String testKey;
    private String start;
    private String finish;
    private String comment;
    private String status;
    private List<Step> steps;

}

