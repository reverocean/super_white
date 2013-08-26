package com.thoughtworks.fedex;

import com.yammer.dropwizard.hibernate.UnitOfWork;
import com.yammer.dropwizard.jersey.params.LongParam;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/consent")
@Produces(MediaType.APPLICATION_JSON)
public class ConsentResource {
    private final ConsentDAO dao;

    public ConsentResource(ConsentDAO dao) {
        this.dao = dao;
    }

    @GET
    @Path("/{id}")
    @UnitOfWork
    public Consent find(@PathParam("id") LongParam id) {
        return dao.findById(id.get());
    }

    @PUT
    @UnitOfWork
    public Consent update(Consent consent) {
        return dao.update(consent);
    }

    @POST
    @UnitOfWork
    public Consent create(Consent consent) {
        return dao.create(consent);
    }
}
