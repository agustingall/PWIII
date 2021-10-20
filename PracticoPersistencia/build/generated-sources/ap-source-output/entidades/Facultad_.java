package entidades;

import entidades.Carrera;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-20T07:07:35")
@StaticMetamodel(Facultad.class)
public class Facultad_ { 

    public static volatile SingularAttribute<Facultad, Integer> idfacultad;
    public static volatile SingularAttribute<Facultad, String> nombre;
    public static volatile CollectionAttribute<Facultad, Carrera> carreraCollection;

}