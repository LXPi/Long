package com.longimage;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "services", schema = "long", catalog = "")
public class ServicesEntity {
    private int id;
    private String servicesname;
    private String servicestext;
    private String servicesimage;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "servicesname", nullable = true, length = 255)
    public String getServicesname() {
        return servicesname;
    }

    public void setServicesname(String servicesname) {
        this.servicesname = servicesname;
    }

    @Basic
    @Column(name = "servicestext", nullable = true, length = -1)
    public String getServicestext() {
        return servicestext;
    }

    public void setServicestext(String servicestext) {
        this.servicestext = servicestext;
    }

    @Basic
    @Column(name = "servicesimage", nullable = true, length = 255)
    public String getServicesimage() {
        return servicesimage;
    }

    public void setServicesimage(String servicesimage) {
        this.servicesimage = servicesimage;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ServicesEntity that = (ServicesEntity) o;
        return id == that.id &&
                Objects.equals(servicesname, that.servicesname) &&
                Objects.equals(servicestext, that.servicestext) &&
                Objects.equals(servicesimage, that.servicesimage);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, servicesname, servicestext, servicesimage);
    }
}
