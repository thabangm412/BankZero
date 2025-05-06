package za.co.bankzero.bankzero.xray;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Evidence {
    private String data;
    private String filename;
    private String contentType;
}
