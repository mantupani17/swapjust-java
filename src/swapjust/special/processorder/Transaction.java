/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package swapjust.special.processorder;

/**
 *
 * @author Handshakeyou
 */
public class Transaction {
 private String trans_id;
 private String cust_id;
 private String total_amount;

    public Transaction(String trans_id, String cust_id, String total_amount) {
        this.trans_id = trans_id;
        this.cust_id = cust_id;
        this.total_amount = total_amount;
    }

    public String getTrans_id() {
        return trans_id;
    }

    public void setTrans_id(String trans_id) {
        this.trans_id = trans_id;
    }

    public String getCust_id() {
        return cust_id;
    }

    public void setCust_id(String cust_id) {
        this.cust_id = cust_id;
    }

    public String getTotal_amount() {
        return total_amount;
    }

    public void setTotal_amount(String total_amount) {
        this.total_amount = total_amount;
    }

}