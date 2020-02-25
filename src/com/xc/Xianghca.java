package com.xc;

import com.longimage.ServicesEntity;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class Xianghca  extends ActionSupport {
    private String ids;
    public JSONArray xiang;

    public String getIds() {
        return ids;
    }

    public void setIds(String ids) {
        this.ids = ids;
    }

    public String sss(){
        List<ServicesEntity> list = null;
        SessionFactory sessionFactory =HibernautUtil.getSessionFactory(5);
        Session session = sessionFactory.openSession();
        Transaction t = session.beginTransaction();
        Query q = session.createQuery("from ServicesEntity where id='"+ids+"'");
        list = q.list();
        t.commit();
        sessionFactory.close();
        session.close();
        //将list转化成JSON对象
        xiang = JSONArray.fromObject(list);
        //把集合对象转化为Json格式集合对象
        //       System.out.println(list.get(0).getImagename()+","+list.get(0).getImageurl());
        return "success";
    }
}
