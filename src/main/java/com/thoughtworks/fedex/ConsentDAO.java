package com.thoughtworks.fedex;

import com.yammer.dropwizard.hibernate.AbstractDAO;
import org.hibernate.SessionFactory;

public class ConsentDAO extends AbstractDAO<Consent> {

    public ConsentDAO(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    public Consent findById(long id) {
        return get(id);
    }

    public Consent create(Consent consent) {
        return persist(consent);
    }

    public Consent update(Consent consent) {
        return persist(consent);
    }
}
