package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
@RequestMapping("/")
public class VizitkaController {

  private final List<Vizitka> seznamZamestnancu = List.of(
          new Vizitka("Dita (Přikrylová) Formánková","Czechitas z. s.", "Václavské náměstí 11, Praha 2", "11000","", "dita@czechitas.cs", "+420 800123456", "www.czechitas.cz", "1"),
          new Vizitka("Barbora Bühnová", "Czechitas z. s.", "Zelená lhota 4, Nýrsko", "38402"," Praha 1", "barbora@czechitas.cs", "+420 800123456","www.czechitas.cz", "2"),
          new Vizitka("Monika Ptáčníková", "Czechitas z. s.", "Pitterova 1, Praha 3", "11000"," Praha 1", "monika@czechitas.cs", "+420 800123456", "www.czechitas.cz", "3"),
          new Vizitka("Mirka Zatloukalová", "Czechitas z. s.", "Krásova 4, Praha 3", "11000"," Praha 1", "mirka@czechitas.cs", "+420 800123456", "www.czechitas.cz", "4")
  );


  @GetMapping("/")

    public ModelAndView seznam() {
      ModelAndView modelAndView = new ModelAndView("seznam");
      modelAndView.addObject("zamestnanci", seznamZamestnancu);
      return modelAndView;
  }

  @GetMapping("/detail/{id}")
  public ModelAndView detail(@PathVariable int id) {
    ModelAndView modelAndView= new ModelAndView("detail");
    modelAndView.addObject("zamestnanec", seznamZamestnancu.get(id - 1));
    return modelAndView;
  }
}
