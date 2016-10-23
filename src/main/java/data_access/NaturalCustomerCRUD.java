package data_access;

import data_access.entity.NaturalCustomer;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 * Created by dotinschool3 on 10/22/2016.
 */
public class NaturalCustomerCRUD {
    public static void saveUser(NaturalCustomer naturalCustomer) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(naturalCustomer);
        int id = naturalCustomer.getId();
        naturalCustomer.setCustomerId(id);
        session.save(naturalCustomer);
        transaction.commit();
        session.close();
        System.out.println("successfully inserted into table");
    }
}
