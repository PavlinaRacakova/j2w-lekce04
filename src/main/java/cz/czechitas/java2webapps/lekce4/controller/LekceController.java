package cz.czechitas.java2webapps.lekce4.controller;

import cz.czechitas.java2webapps.lekce4.entity.Lekce;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.util.List;

@Controller()
@RequestMapping("/lekce")
public class LekceController {

  private final List<Lekce> seznamLekci = List.of(
          new Lekce("FreeMarker", LocalDate.of(2023, 10, 28), "18:00 - 19:00", "V Mechu"),
          new Lekce("Bootstrap", LocalDate.of(2023, 11, 28), "17:00 - 18:00", "V Kapradí")
  );

  @GetMapping("/")
  public ModelAndView seznam() {
    ModelAndView modelAndView = new ModelAndView("/lekce/index");
    modelAndView.addObject("lekce", seznamLekci);
    return modelAndView;
  }
}
