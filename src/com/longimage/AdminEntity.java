package com.longimage;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "admin", schema = "long", catalog = "")
public class AdminEntity {
    private String name;
    private String password;

    @Id
    @Column(name = "name", nullable = false, length = 15)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "password", nullable = false, length = 15)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AdminEntity that = (AdminEntity) o;
        return Objects.equals(name, that.name) &&
                Objects.equals(password, that.password);
    }

    @Override
    public int hashCode() {

        return Objects.hash(name, password);
    }
}
