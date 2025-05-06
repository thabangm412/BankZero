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
public  class Step {
    private String status;
    private String actualResult;
    private String comment;
    private List<Evidence> evidences;
}
