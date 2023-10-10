package cz.czechitas.java2webapps.lekce4.entity;

import java.time.LocalDate;

public record Lekce (String nazevLekce, LocalDate datum, String cas, String misto) {
}
