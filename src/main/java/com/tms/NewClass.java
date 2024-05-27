package com.tms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NewClass {

    public String info, sss;

    @RequestMapping("/welcome")
    public String welcomepage() {
        System.out.println("This is for Welcome Page");
        return "welcomepage";
    }

    @RequestMapping("/explore")
    public String explorepage() {
        System.out.println("This is for Explore Page");
        return "explore";
    }

    @RequestMapping("/welcomepage")
    public String welcomepage2() {
        System.out.println("This is for returning to home page");
        return "welcomepage";
    }

    @RequestMapping("/contact")
    public String contact() {
        System.out.println("This is for contacting us");
        return "contact";
    }

    @RequestMapping("/signin")
    public String signin() {
        System.out.println("This is for going to signin page");
        return "signin";
    }

    int flag = 0;

    @RequestMapping(value = "/register")
    public String viewreg(Model ob1) {
//        Adminregistration adminregForm = new Adminregistration();

//        ob1.addAttribute("adminregForm", adminregForm);

        return "register";
    }

    @RequestMapping(value = "/registerform", method = RequestMethod.POST)
    public String registerform(@RequestParam("a") String aa, @RequestParam("b") String bb, @RequestParam("c") String cc, @RequestParam("d") String dd, @RequestParam("e") String ee, Model object1) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://database-1.c9e4m4i4qhae.ap-south-1.rds.amazonaws.com:3306/tms", "root", "root1234");

            PreparedStatement stmt = con.prepareStatement("insert into registertable values(?,?,?,?,?)");
            stmt.setString(1, aa);
            stmt.setString(2, bb);
            stmt.setString(3, cc);
            stmt.setString(4, ee);
            stmt.setString(5, dd);

            info = cc;

            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        flag = 1;

        return "welcomepage";
    }

    @RequestMapping(value = "/loginsucess", method = RequestMethod.POST)
    public String table(@RequestParam("a") String x,
            @RequestParam("b") String y,
            Model object1) {
        System.out.println("I am from Processform");

        object1.addAttribute("msg", "record inserted Successfully ");
        try {

            Class.forName("com.mysql.jdbc.Driver");

            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://database-1.c9e4m4i4qhae.ap-south-1.rds.amazonaws.com:3306/tms", "root", "root1234");
            PreparedStatement stmt = con.prepareStatement("select * from registertable where UserName=? and Password=?");
            stmt.setString(1, x);
            stmt.setString(2, y);
            ResultSet rs = stmt.executeQuery();
            String m = "", n = "";
            while (rs.next()) {
                n = rs.getString("UserName");
                m = rs.getString("Password");
            }

            System.out.println(n + " " + m);
            if (x.equals(n) && y.equals(m)) {
                return "dashboard";
            } else {
                return "errorpage";
            }
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "output";
    }

    @RequestMapping("/timepassdisplay")
    public String timmeeeepass() {
        return "timepassdisplay";
    }

    @RequestMapping(value = "/add")
    public String viewregadd(Model ob1) {
        System.out.println("Initiated addition");
        return "add";
    }

    @RequestMapping(value = "/registerformadd", method = RequestMethod.POST)
    public String registerformaddD(@RequestParam("a") String aa, @RequestParam("b") String bb, @RequestParam("c") String cc, @RequestParam("d") String dd, @RequestParam("e") String ee, Model object1) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://database-1.c9e4m4i4qhae.ap-south-1.rds.amazonaws.com:3306/tms", "root", "root1234");

            PreparedStatement stmt = con.prepareStatement("insert into registertable values(?,?,?,?,?)");
            stmt.setString(1, aa);
            stmt.setString(2, bb);
            stmt.setString(3, cc);
            stmt.setString(4, ee);
            stmt.setString(5, dd);

            System.out.println("DONE with addition");
            stmt.executeUpdate();

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        flag = 1;
        return "dashboard";
    }

    @RequestMapping(value = "/delete")
    public String deleteeuser() {
        System.out.println("Deleting User Started");
        return "delete";
    }

    @RequestMapping(value = "/deleteform", method = RequestMethod.POST)
    public String deletinguser(@RequestParam("a") String x,
            Model object1) {
        object1.addAttribute("msg", "record deleted Successfully ");

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://database-1.c9e4m4i4qhae.ap-south-1.rds.amazonaws.com:3306/tms", "root", "root1234");
            PreparedStatement stmt = con.prepareStatement("delete from registertable where USERNAME=?");

            stmt.setString(1, x);

            stmt.executeUpdate();
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "dashboard";
    }

    @RequestMapping(value = "/update")
    public String updateeuser() {
        System.out.println("Updating User Started");
        return "update";
    }

    @RequestMapping(value = "/updateform", method = RequestMethod.POST)
    public String updatinguser(@RequestParam("a") String x, @RequestParam("b") String y, @RequestParam("c") String z, @RequestParam("ab") String w,
            Model object1) {
        object1.addAttribute("msg", "record updated Successfully ");

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://database-1.c9e4m4i4qhae.ap-south-1.rds.amazonaws.com:3306/tms", "root", "root1234");
            PreparedStatement stmt = con.prepareStatement("update registertable set FULLNAME=?, EMAIL=?, PHONENO=? where USERNAME=?");
            stmt.setString(4, w);
            stmt.setString(1, x);
            stmt.setString(2, y);
            stmt.setString(3, z);

            stmt.executeUpdate();
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "dashboard";
    }

    @RequestMapping(value = "/snacks")
    public String snackscorner() {
        System.out.println("Buying Snacks Started");
        return "snacks";
    }

    @RequestMapping(value = "/buysnacks", method = RequestMethod.GET)
    public String buyform(@RequestParam("a") int aa, @RequestParam("b") int bb, @RequestParam("c") int cc, @RequestParam("d") int dd, @RequestParam("e") int ee, @RequestParam("f") int ff, @RequestParam("g") int gg, @RequestParam("h") int hh, @RequestParam("i") int ii, Model ob) {

        System.out.println("Total Items in cart: " + aa + bb + cc + dd + ee + ff + gg + hh + ii);
        int total = aa + bb + cc + dd + ee + ff + gg + ii;
        int billing = 50 * total;
        System.out.println("total");
        ob.addAttribute("Num", total);
        ob.addAttribute("Bill", billing);

        return "billing";
    }

    @RequestMapping("/billing")
    public String bills() {
        return "billing";
    }

    @RequestMapping("/Tickets")
    public String booking() {
        System.out.println("Booking TIckets");
        return "Tickets";
    }

    @RequestMapping(value = "/searching", method = RequestMethod.POST)
    public String searchnow(@RequestParam("search") String x, Model Object1) {
        sss = x;
        Object1.addAttribute("msg", x);
        System.out.println("SHODHTOY");
        return "searching";
    }

    @RequestMapping("/email")
    public String bbsc(Model object1) {
        object1.addAttribute("email", info);
        return "email";
    }

    //NEW ONE
    
    

}
