package com.xc;

import com.longimage.ChanpinEntity;
import org.apache.commons.io.FileUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Random;

public class Add {
    private String canpingming;
    private String canpingzhonglei;
    private String describe;
    private File moduletitle;
    public String tishi;
    public String getCanpingming() {
        return canpingming;
    }

    public void setCanpingming(String canpingming) {
        this.canpingming = canpingming;
    }

    public String getCanpingzhonglei() {
        return canpingzhonglei;
    }

    public void setCanpingzhonglei(String canpingzhonglei) {
        this.canpingzhonglei = canpingzhonglei;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public File getModuletitle() {
        return moduletitle;
    }

    public void setModuletitle(File moduletitle) {
        this.moduletitle = moduletitle;
    }

    public String sss(){
        String imageurl=copyfile("images",moduletitle);
        SessionFactory sessionFactory = HibernautUtil.getSessionFactory(5);
        Session session = sessionFactory.openSession();
        Transaction t = session.beginTransaction();
        ChanpinEntity chanpinEntity=new ChanpinEntity();
        chanpinEntity.setName(canpingming);
        chanpinEntity.setLei(canpingzhonglei);
        chanpinEntity.setMiaosu(describe);
        chanpinEntity.setImgurl(imageurl);
        session.save(chanpinEntity);
        t.commit();
        sessionFactory.close();
        session.close();
        return tishi="success";
    }
    //文件路径的上一级目录
    private String filepath(String realPath){
        if(realPath.substring(0,1).equals("/")){
            realPath= realPath.substring(1,realPath.length());
        }
        if(realPath.substring(realPath.length()-1,realPath.length()).equals("/")){
            realPath=realPath.substring(0,realPath.length()-1);
        }
        int b=0;
        int a=0;
        int c=0;
        while (true){
            a=realPath.indexOf("/",a+1);
            if(a==-1){
                System.out.println(realPath.substring(0,b));
                realPath=realPath.substring(0,b);
                return realPath;
            }else {
                b=a;
            }
        }
    }
    //查找fileph文件夹的路径，把moduletitle文件存入目录
    private String copyfile(String fileph,File moduletitle){
        //获取要保存文件夹的物理路径(绝对路径)
        String realPath1=this.getClass().getClassLoader().getResource("/").getPath();
        //返回上一级菜单
        String realPath=filepath(realPath1);
        File file = new File(realPath+"/"+fileph);
        //测试此抽象路径名表示的文件或目录是否存在。若不存在，创建此抽象路径名指定的目录，包括所有必需但不存在的父目录。
        while (true){
            //file路径是否存在
            if(!file.exists() && !file .isDirectory()){
                //不存在
                realPath=filepath(realPath);
                file = new File(realPath+"/"+fileph);
                //file.mkdirs();
            }else {
                //存在
                try {
                    //保存文件
                    String fname=getFilename("images");
                    FileUtils.copyFile(moduletitle, new File(realPath+"/"+fileph,fname));
                    return fileph+"/"+fname;
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
    //随机参数字符length位字符
    private static String getRandomString(int length){
        //定义一个字符串（A-Z，a-z，0-9）即62位；
        String str="zxcvbnmlkjhgfdsaqwertyuiopQWERTYUIOPASDFGHJKLZXCVBNM1234567890";
        //由Random生成随机数
        Random random=new Random();
        StringBuffer sb=new StringBuffer();
        //长度为几就循环几次
        for(int i=0; i<length; ++i){
            //产生0-61的数字
            int number=random.nextInt(62);
            //将产生的数字通过length次承载到sb中
            sb.append(str.charAt(number));
        }
        //将承载的字符转换成字符串
        return sb.toString();
    }
    //产生文件名，并判断是否有效
    private String getFilename(String path){
        String filename;
        filename=getRandomString(6);
        try {
            TypeDict typeDict=new TypeDict(new FileInputStream(moduletitle));
            String hou=typeDict.getype();
            if(hou.equals("0")){
                return "";
            }else {
                filename=filename+"."+hou;
                File file = new File(path+"/"+filename);
                while (file.exists()){
                    filename=getRandomString(6);
                    filename=filename+typeDict.getype();
                    file = new File(path+"/"+filename);
                }
            }
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return filename;
    }
}
