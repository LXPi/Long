package com.longimage;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "chanpin", schema = "long", catalog = "")
public class ChanpinEntity {
    private int id;
    private String name;
    private String lei;
    private String miaosu;
    private String imgurl;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 255)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "lei", nullable = true, length = 255)
    public String getLei() {
        return lei;
    }

    public void setLei(String lei) {
        this.lei = lei;
    }

    @Basic
    @Column(name = "miaosu", nullable = true, length = 255)
    public String getMiaosu() {
        return miaosu;
    }

    public void setMiaosu(String miaosu) {
        this.miaosu = miaosu;
    }

    @Basic
    @Column(name = "imgurl", nullable = true, length = 255)
    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ChanpinEntity that = (ChanpinEntity) o;
        return id == that.id &&
                Objects.equals(name, that.name) &&
                Objects.equals(lei, that.lei) &&
                Objects.equals(miaosu, that.miaosu) &&
                Objects.equals(imgurl, that.imgurl);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, name, lei, miaosu, imgurl);
    }
}
