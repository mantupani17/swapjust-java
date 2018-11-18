<%-- 
    Document   : fileUploadController
    Created on : May 5, 2017, 11:09:24 AM
    Author     : mantu
--%>

<%@page import="HsyData.Admin_Data"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBUtils"%>
<%@page import="HsyData.HsyDbAccess"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>image upload</title>
    </head>
    <body>
        <%--<%!
            File file ;
            int maxSize = 5000 * 10*20;
            int maxFactSize = 5000 * 10*20;
            String path ="E:\\java\\HygoShoppingMart\\web\\Gallery";
            //E:\\java\\HygoShoppingMart\\web\\Gallery
            ArrayList<String> paths ;
            String prod_code; 
            
        %>
        <%
            
            String type = request.getContentType();
            paths = new ArrayList<String>(); 
            if(type.indexOf("multipart/form-data")>=0)
            {
                
                DiskFileItemFactory diskFact = new DiskFileItemFactory();
                diskFact.setSizeThreshold(maxFactSize);
                diskFact.setRepository(new File("C:/temp"));
                //FileItemFactory itemFact = new FileItemFactory
                ServletFileUpload upload = new ServletFileUpload(diskFact);
                upload.setSizeMax(maxSize);
                List list = upload.parseRequest(request);
                Iterator<FileItem> itr = list.iterator() ;
                int i =1; 
                while(itr.hasNext())
                {
                    
                    String str;
                    FileItem item = itr.next();
                    if(item.isFormField())
                    {
                        
                      String z = item.getFieldName();
                      if(z.equals("prod_code"))
                      {
                      prod_code  = item.getString();
                      //out.println("<h5>"+y+"</h5>");
                      }
                    }
                    else
                    {
                        str = item.getName();
                        str =  prod_code+""+(i++)+(str.substring(str.indexOf(".")));
                        out.println("<h1>"+str+"</h1>");
                        paths.add(str);
                        file = new File(path,str);
                        item.write(file);
                       
                      //out.println("<h5>"+y+z+"</h5>");
                    }
                }
                
            }
        %>
        <%
           String x = HsyDbAccess.insertImages(paths, prod_code);
           out.println("<h3>"+x+"</h3>");
           try{
               String sql = "SELECT * FROM hsy_images";
               ResultSet res = DBUtils.getPreparedStatement(sql).executeQuery();
               while(res.next())
               {
                   %>
                   <img src="../Gallery/<%=res.getString("image_1")%>" alt="<%=res.getString("image_1")%>" />
                   <%
               }   
           }catch(Exception e){}
           response.sendRedirect("newProductEntry.jsp");
        %>
        --%>
        <%!
            File file ;
            int maxSize = 5000 * 10*20;
            int maxFactSize = 5000 * 10*20;
            String path ="E:\\java\\HygoShoppingMart\\web\\Gallery";
            //E:\\java\\HygoShoppingMart\\web\\Gallery
            String paths = null;
            String prod_code; 
            String str = null;
            int x = 0;
        %>
        <%
            
            String type = request.getContentType();
            //paths = new String();
            if(type.indexOf("multipart/form-data")>=0)
            {
                
                DiskFileItemFactory diskFact = new DiskFileItemFactory();
                diskFact.setSizeThreshold(maxFactSize);
                diskFact.setRepository(new File("C:/temp"));
                //FileItemFactory itemFact = new FileItemFactory
                ServletFileUpload upload = new ServletFileUpload(diskFact);
                upload.setSizeMax(maxSize);
                List list = upload.parseRequest(request);
                Iterator<FileItem> itr = list.iterator() ;
                int i =1; 
                while(itr.hasNext())
                {
                    
                    
                    FileItem item = itr.next();
                    if(item.isFormField())
                    {
                        
                      String z = item.getFieldName();
                      if(z.equals("prod_code"))
                      {
                      prod_code  = item.getString();
                      out.println("<h5>"+prod_code+"</h5>");
                      }
                    }
                    else
                    {
                        str = item.getName();
                        str =  prod_code+""+(i++)+(str.substring(str.indexOf(".")));
                        //out.println("<h1>"+str+"</h1>");
                        paths = paths+str;
                        file = new File(path,str);
                        item.write(file);
                        x = Admin_Data.setOfferImage(prod_code,str);
                      //out.println("<h5>"+y+z+"</h5>");
                    }
                    
                }
                
            }
            // out.println("<h1>"+str+"</h1>");
           
           if(x>0)
           {
               response.sendRedirect("offerImage.jsp");
           }
           
        %>
    </body>
</html>
