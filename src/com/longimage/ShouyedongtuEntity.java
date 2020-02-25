package com.longimage;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "shouyedongtu", schema = "long", catalog = "")
public class ShouyedongtuEntity {
    private int id;
    private String imagename;
    private String imageurl;
    private String xiang;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "imagename", nullable = true, length = 255)
    public String getImagename() {
        return imagename;
    }

    public void setImagename(String imagename) {
        this.imagename = imagename;
    }

    @Basic
    @Column(name = "imageurl", nullable = true, length = 255)
    public String getImageurl() {
        return imageurl;
    }

    public void setImageurl(String imageurl) {
        this.imageurl = imageurl;
    }

    @Basic
    @Column(name = "xiang", nullable = true, length = -1)
    public String getXiang() {
        return xiang;
    }

    public void setXiang(String xiang) {
        this.xiang = xiang;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ShouyedongtuEntity that = (ShouyedongtuEntity) o;
        return id == that.id &&
                Objects.equals(imagename, that.imagename) &&
                Objects.equals(imageurl, that.imageurl) &&
                Objects.equals(xiang, that.xiang);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, imagename, imageurl, xiang);
    }
}
