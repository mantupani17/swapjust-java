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
public class OrderStatus {
    private int order_id;
    private String src_loc;
    private String des_loc;
    private String curr_loc;
    private String order_status;
    private String currdate_time;

    public OrderStatus( String src_loc, String des_loc, String curr_loc, String order_status, String currdate_time) {
        this.src_loc = src_loc;
        this.des_loc = des_loc;
        this.curr_loc = curr_loc;
        this.order_status = order_status;
        this.currdate_time = currdate_time;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getSrc_loc() {
        return src_loc;
    }

    public void setSrc_loc(String src_loc) {
        this.src_loc = src_loc;
    }

    public String getDes_loc() {
        return des_loc;
    }

    public void setDes_loc(String des_loc) {
        this.des_loc = des_loc;
    }

    public String getCurr_loc() {
        return curr_loc;
    }

    public void setCurr_loc(String curr_loc) {
        this.curr_loc = curr_loc;
    }

    public String getOrder_status() {
        return order_status;
    }

    public void setOrder_status(String order_status) {
        this.order_status = order_status;
    }

    public String getCurrdate_time() {
        return currdate_time;
    }

    public void setCurrdate_time(String currdate_time) {
        this.currdate_time = currdate_time;
    }
    
    
}
