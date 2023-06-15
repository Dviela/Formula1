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
    @NonNull
    private String image;
    @Override
    public String toString() {
        return "Nombre: " + getName() + ", Escudería: " + getTeamId() + ", Nacionalidad: " + getNationality() + ", Número: " + getNumber() + ", ID: " + getId();
    }
}

