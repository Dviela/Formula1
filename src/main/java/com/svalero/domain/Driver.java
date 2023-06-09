package com.svalero.domain;

import lombok.*;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
//@NoArgsConstructor
@ToString

public class Driver {
    private String id;
    @NonNull
    private String teamId;
    @NonNull
    private String name;
    @NonNull
    private String nationality;
    @NonNull
    private int number;
}
