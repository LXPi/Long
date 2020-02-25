package com.longimage;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "shouimage", schema = "long", catalog = "")
public class ShouimageEntity {
    private String imagename;
    private String imageurl;
    private int id;

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

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ShouimageEntity that = (ShouimageEntity) o;
        return id == that.id &&
                Objects.equals(imagename, that.imagename) &&
                Objects.equals(imageurl, that.imageurl);
    }

    @Override
    public int hashCode() {

        return Objects.hash(imagename, imageurl, id);
    }
}
