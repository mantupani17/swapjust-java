/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HsyModel;
import java.util.*;
/**
 *
 * @author mantu
 */
public class Otp {
    private String  mob_no;
    private String otp;
    public int resu;
    public Otp(String mob_no)
    {
        this.mob_no=mob_no;
    }

    public String getMob_no() {
        return mob_no;
    }

    public void setMob_no(String mob_no) {
        this.mob_no = mob_no;
    }

    public String getOtp() {
        Random ran=new Random();
        resu=ran.nextInt(9999+1000);
        otp=String.valueOf(resu);
        return otp;
    }

    public void setOtp(String otp) {
        this.otp = otp;
    }
    /*public static void main(String[] args) {
        Otp o=new Otp("7873160006");
        String ox=o.getOtp();
        System.out.println(ox+" "+o.getMob_no());
    }*/
}
