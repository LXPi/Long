package com.xc;

import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class Shan extends ActionSupport {
    public String tishi;
    private String id;
private String datasoure;

    public String getDatasoure() {
        return datasoure;
    }

    public void setDatasoure(String datasoure) {
        this.datasoure = datasoure;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String sss() {
        System.out.println(id);
        System.out.println(datasoure);
        SessionFactory sessionFactory = HibernautUtil.getSessionFactory(5);
        Session session = sessionFactory.openSession();
        Transaction t = session.beginTransaction();
        Query q = null;
        if(datasoure.equals("canpin")){
             q = session.createQuery("delete ChanpinEntity where id='"+id+"'");   
        }else if(datasoure.equals("shouyedongtu")){
             q = session.createQuery("delete ShouyedongtuEntity where id='"+id+"'");
        }else if(datasoure.equals("services")){
            q = session.createQuery("delete ServicesEntity where id='"+id+"'");
        }else if(datasoure.equals("taocan")){
            q = session.createQuery("delete TaocansEntity where id='"+id+"'");
        }
        int a=q.executeUpdate();
        t.commit();
        sessionFactory.close();
        session.close();
        //将list转化成JSON对象
        //把集合对象转化为Json格式集合对象
        if(a==0){
            tishi="failure";
            return tishi;
        }
        tishi="success";
        return tishi;
    }


}
