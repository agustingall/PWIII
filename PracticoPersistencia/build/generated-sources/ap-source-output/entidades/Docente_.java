package entidades;

import entidades.Materia;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-20T07:07:35")
@StaticMetamodel(Docente.class)
public class Docente_ { 

    public static volatile SingularAttribute<Docente, Materia> materiaIdmateria;
    public static volatile CollectionAttribute<Docente, Materia> materiaCollection;
    public static volatile SingularAttribute<Docente, Integer> id;
    public static volatile SingularAttribute<Docente, String> nombre;

}