package com.xc;

import com.longimage.AdminEntity;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class Admin  extends ActionSupport {
    private String username;
    private String password;
    public JSONArray jsonArray4;
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String logins(){
        List<Sadmins> list = new ArrayList<Sadmins>();
        SessionFactory sessionFactory =HibernautUtil.getSessionFactory(5);
        Session session = sessionFactory.openSession();
        Transaction t = session.beginTransaction();
        try {
            AdminEntity adminEntity=session.get(AdminEntity.class,username);
            if(!adminEntity.getPassword().equals(password)){
                t.commit();
                sessionFactory.close();
                session.close();
                return "";
            }else {
                Sadmins admin=new Sadmins();
                admin.setUsername(username);
                admin.setPassword(password);
                list.add(admin);
                t.commit();
                sessionFactory.close();
                session.close();
                jsonArray4=JSONArray.fromObject(list);
                return "success";
            }
        }catch (Exception e){
            t.commit();
            sessionFactory.close();
            session.close();
            return "";
        }

        }

    }


