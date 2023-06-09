package com.svalero.domain;

import lombok.*;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
//@NoArgsConstructor
@ToString

public class Circuit {
    private int id;
    @NonNull
    private String name;
    @NonNull
    private String city;
    @NonNull
    private String laps;
}
