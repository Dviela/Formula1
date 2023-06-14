package com.svalero.domain;

import lombok.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
//@NoArgsConstructor
@ToString

public class GP {
    private String id;
    @NonNull
    private String winner;
    @NonNull
    private String circuit;
    @NonNull
    private LocalDate date;
    @Override
    public String toString() {
        return "Circuito: " + getCircuit() + ", Ganador: " + getWinner() + ", Fecha: "
                + getDate().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")) + ", ID: " + getId();
    }
}
