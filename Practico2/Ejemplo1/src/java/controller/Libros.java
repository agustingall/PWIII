package controller;

import java.util.ArrayList;
import javax.servlet.http.*;

public class Libros {
    ArrayList v = new ArrayList();
    String boton = null;
    String item = null;
    private void addItem(String nombre) {
    boolean a = v.add(nombre);
    }
    private void removeItem(String nombre)
    {
    v.remove(nombre);
    }
    public void setItem(String nombre) {
    item = nombre;
    }
    public String[] getItems() {
    //Obtengo todos los items en un String
    String[] s = new String[v.size()];
    v.toArray(s);
    return s;
    }
    public void setBoton(String s) {
    boton = s;
    }
}
