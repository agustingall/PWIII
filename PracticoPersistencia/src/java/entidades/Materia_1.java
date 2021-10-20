/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Agustin
 */
@Entity
@Table(name = "materia")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Materia_1.findAll", query = "SELECT m FROM Materia_1 m"),
    @NamedQuery(name = "Materia_1.findByIdmateria", query = "SELECT m FROM Materia_1 m WHERE m.idmateria = :idmateria"),
    @NamedQuery(name = "Materia_1.findByNombre", query = "SELECT m FROM Materia_1 m WHERE m.nombre = :nombre")})
public class Materia_1 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idmateria")
    private Integer idmateria;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "nombre")
    private String nombre;
    @ManyToMany(mappedBy = "materiaCollection")
    private Collection<Docente> docenteCollection;
    @OneToMany(mappedBy = "materiaIdmateria")
    private Collection<Docente> docenteCollection1;

    public Materia_1() {
    }

    public Materia_1(Integer idmateria) {
        this.idmateria = idmateria;
    }

    public Materia_1(Integer idmateria, String nombre) {
        this.idmateria = idmateria;
        this.nombre = nombre;
    }

    public Integer getIdmateria() {
        return idmateria;
    }

    public void setIdmateria(Integer idmateria) {
        this.idmateria = idmateria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @XmlTransient
    public Collection<Docente> getDocenteCollection() {
        return docenteCollection;
    }

    public void setDocenteCollection(Collection<Docente> docenteCollection) {
        this.docenteCollection = docenteCollection;
    }

    @XmlTransient
    public Collection<Docente> getDocenteCollection1() {
        return docenteCollection1;
    }

    public void setDocenteCollection1(Collection<Docente> docenteCollection1) {
        this.docenteCollection1 = docenteCollection1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idmateria != null ? idmateria.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Materia_1)) {
            return false;
        }
        Materia_1 other = (Materia_1) object;
        if ((this.idmateria == null && other.idmateria != null) || (this.idmateria != null && !this.idmateria.equals(other.idmateria))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Materia_1[ idmateria=" + idmateria + " ]";
    }
    
}
