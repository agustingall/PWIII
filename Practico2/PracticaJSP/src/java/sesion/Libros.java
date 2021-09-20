package sesion;
import java.util.ArrayList;
import java.util.HashSet;
import javax.servlet.http.*;

public class Libros {
    HashSet v = new HashSet();
    String submit = null;
    String item = "nada";

    private void addItem(String name) {
           v.add(name);
    }

    private void removeItem(String name) {
	v.remove(name);
    }

    public void setItem(String name) {
	item = name;
    }

    public void setSubmit(String s) {
	submit = s;
    }

    public String[] getItems() {
	String[] s = new String[v.size()];
	v.toArray(s);
	return s;
    }

    public void processRequest(HttpServletRequest request) {        
	if (request.getParameter("agregar") != null) {
		addItem(request.getParameter("item"));
	}
	else if (request.getParameter("borrar") != null) {
		removeItem(request.getParameter("item"));
	    }
	}
    
    private void reset() {
	submit = null;
	item = null;
    }
}
