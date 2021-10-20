/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import entidades.Materia;
import entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.UserTransaction;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.persistence.Query;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.NotSupportedException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;
import sesiones.MateriaFacade;
import sesiones.UsuarioFacade;
/**
 *
 * @author Agustin
 */
@WebServlet(name = "ManejadorUsuario",
        loadOnStartup = 1,
        urlPatterns = {"/AgregarUsuario",
        "/ListarUsuario",
        "/CrearUsuario"
})
public class ManejadorUsuario extends HttpServlet {
    @EJB
    private MateriaFacade m;
    @EJB
    private UsuarioFacade u;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NotSupportedException, SystemException {
        try  {
            
            String pathUsuario = request.getServletPath();
            String url = null;
            
            switch (pathUsuario){
                case "/CrearUsuario":
                    
                    
                    url = "crear" + pathUsuario + ".jsp";
                    break; 
                case "/AgregarUsuario":
                    
                    String nombre   = (String) request.getParameter("nombre");
                    int  idUsuario; 
                    idUsuario   = Integer.parseInt(request.getParameter("id"));
                    Usuario usu = new Usuario();
                    usu.setNombre(nombre);
                    usu.setId(idUsuario);
                    u.create(usu);
                    
                    url = "index.html";
                    break;
                case "/ListarUsuario":
                    
                    request.setAttribute("lista", u.findAll());
                    url = "vista" + pathUsuario + ".jsp";
                    break;
            }
            try {request.getRequestDispatcher(url).forward(request, response);  }
            catch (ServletException | IOException ex){   } 
        }
        catch ( SecurityException | IllegalStateException ex) {
            Logger.getLogger(ManejadorUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }        finally { System.out.println("Proceso finalzado"); }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (NotSupportedException | SystemException ex) {
            Logger.getLogger(ManejadorUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (NotSupportedException | SystemException ex) {
            Logger.getLogger(ManejadorUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
