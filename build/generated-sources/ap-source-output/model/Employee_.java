package model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2019-04-22T11:03:16")
@StaticMetamodel(Employee.class)
public class Employee_ { 

    public static volatile SingularAttribute<Employee, String> password;
    public static volatile SingularAttribute<Employee, String> emailAddress;
    public static volatile SingularAttribute<Employee, Boolean> gender;
    public static volatile SingularAttribute<Employee, Boolean> activeStatus;
    public static volatile SingularAttribute<Employee, Date> dob;
    public static volatile SingularAttribute<Employee, Integer> weight;
    public static volatile SingularAttribute<Employee, String> fullname;
    public static volatile SingularAttribute<Employee, String> username;
    public static volatile SingularAttribute<Employee, Integer> height;

}