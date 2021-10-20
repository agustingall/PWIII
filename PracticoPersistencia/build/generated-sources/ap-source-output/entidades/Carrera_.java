package entidades;

import entidades.Alumno;
import entidades.Facultad;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-20T07:07:35")
@StaticMetamodel(Carrera.class)
public class Carrera_ { 

    public static volatile CollectionAttribute<Carrera, Alumno> alumnoCollection;
    public static volatile SingularAttribute<Carrera, Integer> idcarrera;
    public static volatile SingularAttribute<Carrera, Facultad> facultadIdfacultad;
    public static volatile SingularAttribute<Carrera, String> nombre;

}