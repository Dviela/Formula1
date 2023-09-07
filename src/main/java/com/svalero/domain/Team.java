package com.svalero.domain;

import lombok.*;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
//@NoArgsConstructor
@ToString

public class Team {
    private String id;
    @NonNull
    private String name;
    @NonNull
    private String country;
    @NonNull
    private String engine;

    @Override
    public String toString() {
        return "Escudería: " + getName() + ", ID: " + getId();
    }
}
