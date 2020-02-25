package com.xc;

import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 * <p>Type: HibernateUtil</p>
 * <p>Description: Hibernate工具类.</p>
 * @author baitang.<gy03554>
 * @date 2018年10月16日 上午12:37:58
 * @version v1.0.0
 */
public class HibernautUtil {

    // 配置文件的位置
    private static final String CONFIGURE_XML = "hibernate.cfg.xml";

    /**
     * Hibernate 3.x 获取SessionFactory方式.
     * @return SessionFactory
     */
    private static SessionFactory buildHibernate3SessionFactory() {

        // 1). 创建 Configuration 对象: 对应 hibernate 的基本配置信息和 对象关系映射信息
        Configuration configuration = new Configuration().configure(CONFIGURE_XML);

        return configuration.buildSessionFactory();
    }

    /**
     * Hibernate 4.x 获取SessionFactory方式
     * @return SessionFactory
     */
    private static SessionFactory buildHibernate4SessionFactory() {

        // 1). 创建 Configuration 对象: 对应 hibernate 的基本配置信息和 对象关系映射信息
        Configuration configuration = new Configuration().configure(CONFIGURE_XML);

        // 2). 创建一个 ServiceRegistry 对象: hibernate 4.x 新添加的对象
        // hibernate 的任何配置和服务都需要在该对象中注册后才能有效.
//        ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties())
//                .buildServiceRegistry();
//        return configuration.buildSessionFactory(serviceRegistry);

        return configuration.buildSessionFactory();

    }

    /**
     * Hibernate 5.x 获取SessionFactory方式
     * @return SessionFactory
     */
    private static SessionFactory buildHibernate5SessionFactory() {

        // A SessionFactory is set up once for an application!
        // configures settings from hibernate.cfg.xml
        final StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure(CONFIGURE_XML).build();
        try {
            return new MetadataSources( registry ).buildMetadata().buildSessionFactory();
        }
        catch (Exception e) {
            // The registry would be destroyed by the SessionFactory, but we had trouble building the SessionFactory
            // so destroy it manually.
            StandardServiceRegistryBuilder.destroy( registry );
        }
        return null;
    }

    /**
     * 获取SessionFactory方法
     * @param sessionVersion Hibernate的版本号（取值为：3，4，5）
     * @return SessionFactory
     */
    public synchronized static SessionFactory getSessionFactory(int sessionVersion) {

        if (3 == sessionVersion) {

            return buildHibernate3SessionFactory();
        } else if (4 == sessionVersion) {

            return buildHibernate4SessionFactory();
        } else if (5 == sessionVersion) {

            return buildHibernate5SessionFactory();
        }
        return null;
    }

}