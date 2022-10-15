package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class VizitkaController {

  private final List<Vizitka> seznamZamestnancu = List.of(
          new Vizitka("Dita (Přikrylová) Formánková", "Czechitas z. s.", "Václavské náměstí 837/11", "11000","", "dita@czechitas.cs", "+420 800123456", "www.czechitas.cz"),
          new Vizitka("Barbora Bühnová", null, "Václavské náměstí 837/11", "d","11000", null, "+420 800123456",null),
          new Vizitka("Monika Ptáčníková", "Czechitas z. s.", null, "11000"," Praha 1", "monika@czechitas.cs", "+420 800123456", "www.czechitas.cz"),
          new Vizitka("Mirka Zatloukalová", "Czechitas z. s.", "Václavské náměstí 837/11", "11000"," Praha 1", "mirka@czechitas.cs", "+420 800123456", "www.czechitas.cz")
  );


  @GetMapping("/")

    public ModelAndView seznam() {
      ModelAndView modelAndView = new ModelAndView("seznam");
      modelAndView.addObject("zamestnanci", seznamZamestnancu);
      return modelAndView;
  }

  @GetMapping("/detail")
  public ModelAndView detail() {
    ModelAndView modelAndView= new ModelAndView("detail");
    return modelAndView;
  }
}
