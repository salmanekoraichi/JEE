package server.jsfex1;

/**
 * This code is written by Salmane Koraichi
 **/
import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Named;
import java.util.ArrayList;
import java.util.List;

@Named("bean")
@RequestScoped
public class NumberBean {

    private Integer nombre;                 // valeur saisie

    public Integer getNombre() { return nombre; }
    public void setNombre(Integer nombre) { this.nombre = nombre; }

    /** Renvoie les 5 entiers qui suivent le nombre saisi */
    public List<Integer> getSuite() {
        List<Integer> suite = new ArrayList<>();
        if (nombre != null) {
            for (int i = 1; i <= 5; i++) suite.add(nombre + i);
        }
        return suite;
    }

    /** Navigation vers la page résultat */
    public String afficher() { return "result"; }  // --> result.xhtml
}
