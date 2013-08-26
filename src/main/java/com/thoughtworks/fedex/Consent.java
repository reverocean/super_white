package com.thoughtworks.fedex;

import javax.persistence.*;

@Entity
@Table(name = "people")
public class Consent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "indicator", nullable = false)
    private String indicator;

    public long getId() {
        return id;
    }

    public String getIndicator() {
        return indicator;
    }
}
