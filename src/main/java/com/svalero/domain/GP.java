package com.svalero.domain;

import lombok.*;
import java.time.LocalDate;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
//@NoArgsConstructor
@ToString

public class GP {
    private String id;
    @NonNull
    private String idWinner;
    @NonNull
    private String idCircuit;
    @NonNull
    private LocalDate date;
}
