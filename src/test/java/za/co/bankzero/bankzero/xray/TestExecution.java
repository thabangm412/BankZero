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
public class TestExecution {
    private Info info;
    private String testExecutionKey;
    private List<XrayTest> tests;
}
