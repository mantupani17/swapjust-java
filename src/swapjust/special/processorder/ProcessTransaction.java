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
public class ProcessTransaction {
    private String trans_id;
    private String cust_id;
    private String trans_status;

    public ProcessTransaction(String trans_id, String cust_id, String trans_status) {
        this.trans_id = trans_id;
        this.cust_id = cust_id;
        this.trans_status = trans_status;
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

    public String getTrans_status() {
        return trans_status;
    }

    public void setTrans_status(String trans_status) {
        this.trans_status = trans_status;
    }
    
}
