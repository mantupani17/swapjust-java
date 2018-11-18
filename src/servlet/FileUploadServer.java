/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import HsyModel.FileUpload;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.io.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;

/**
 *
 * @author mantu
 */
@WebServlet(name = "FileUploadServer", urlPatterns = {"/FileUploadServer"})
public class FileUploadServer extends HttpServlet {
private final String UPLOAD_FOLDER="G:\\java\\webapp\\HsyEcom\\upload";
private File file;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        boolean ismultipart = ServletFileUpload.isMultipartContent(request);
        if(ismultipart)
        {
            ServletFileUpload upload = new ServletFileUpload();
            
            try{
                FileItemIterator itr = upload.getItemIterator(request);
                while(itr.hasNext())
                {
                    FileItemStream fis = itr.next();
                    if(fis.isFormField()){
                        String fieldName=fis.getFieldName();
                        InputStream is=fis.openStream();
                        byte []b = new byte[is.available()];
                        is.read(b);
                        String value = new String(b); 
                        response.getWriter().println(fieldName + ": "+value+"<br/>");
                               
                    }
                    else
                    {
                        String path = getServletContext().getRealPath("/");
                        if(FileUpload.processFile(path, fis))
                            response.getWriter().println("File Uploaded Successfully ");
                        else 
                            response.getWriter().println("File Uploaded Denied");
                    }
                }
            }catch(FileUploadException fue){
                fue.printStackTrace();
            }
        }
        
        /*if(ServletFileUpload.isMultipartContent(request))
        {
            try{
                List<FileItem> multiparts= new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for(FileItem item:multiparts)
                {
                    if(!item.isFormField())
                    {
                        String name=new File(item.getName()).getName();
                        file=new File(UPLOAD_FOLDER+ File.separator + name);
                        item.write(new File(UPLOAD_FOLDER+ File.separator + name));
                    }
                }
                request.setAttribute("message", "File Uploaded to "+file.getAbsolutePath()+" of size");
            }catch(Exception e){
            request.setAttribute("message", "File Uploaded Failed due to "+ e.toString());
            }
            
        }
        else
        {
            request.setAttribute("message", "Sorry this servlet only handles file upload request");
        }
        request.getRequestDispatcher("/JSP/result.jsp").forward(request, response);*/
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
