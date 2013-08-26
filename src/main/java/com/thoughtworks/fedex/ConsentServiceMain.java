package com.thoughtworks.fedex;

import com.yammer.dropwizard.Service;
import com.yammer.dropwizard.config.Bootstrap;
import com.yammer.dropwizard.config.Environment;
import com.yammer.dropwizard.db.DatabaseConfiguration;
import com.yammer.dropwizard.hibernate.HibernateBundle;
import com.yammer.dropwizard.migrations.MigrationsBundle;

public class ConsentServiceMain extends Service<ConsentServiceConfiguration> {
    private final HibernateBundle<ConsentServiceConfiguration> hibernate = new HibernateBundle<ConsentServiceConfiguration>(Consent.class) {
        @Override
        public DatabaseConfiguration getDatabaseConfiguration(ConsentServiceConfiguration configuration) {
            return configuration.getDatabaseConfiguration();
        }
    };

    public static void main(String[] args) throws Exception {
        new ConsentServiceMain().run(args);
    }

    @Override
    public void initialize(Bootstrap<ConsentServiceConfiguration> bootstrap) {
        bootstrap.setName("Consent-Service");
        bootstrap.addBundle(new MigrationsBundle<ConsentServiceConfiguration>() {
            @Override
            public DatabaseConfiguration getDatabaseConfiguration(ConsentServiceConfiguration configuration) {
                return configuration.getDatabaseConfiguration();
            }
        });
        bootstrap.addBundle(hibernate);
    }

    @Override
    public void run(ConsentServiceConfiguration configuration, Environment environment) throws Exception {
        ConsentDAO dao = new ConsentDAO(hibernate.getSessionFactory());
        environment.addResource(new ConsentResource(dao));
    }
}
