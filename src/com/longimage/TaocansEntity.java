package com.longimage;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "taocans", schema = "long", catalog = "")
public class TaocansEntity {
    private int id;
    private String taocanname;
    private String taocanimage;
    private String taocantext;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "taocanname", nullable = true, length = 255)
    public String getTaocanname() {
        return taocanname;
    }

    public void setTaocanname(String taocanname) {
        this.taocanname = taocanname;
    }

    @Basic
    @Column(name = "taocanimage", nullable = true, length = 255)
    public String getTaocanimage() {
        return taocanimage;
    }

    public void setTaocanimage(String taocanimage) {
        this.taocanimage = taocanimage;
    }

    @Basic
    @Column(name = "taocantext", nullable = true, length = -1)
    public String getTaocantext() {
        return taocantext;
    }

    public void setTaocantext(String taocantext) {
        this.taocantext = taocantext;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TaocansEntity that = (TaocansEntity) o;
        return id == that.id &&
                Objects.equals(taocanname, that.taocanname) &&
                Objects.equals(taocanimage, that.taocanimage) &&
                Objects.equals(taocantext, that.taocantext);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, taocanname, taocanimage, taocantext);
    }
}
