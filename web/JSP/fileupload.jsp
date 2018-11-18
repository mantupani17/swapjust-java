<%--  
    Document   : fileupload
    Created on : Jan 22, 2017, 9:46:16 AM
    Author     : mantu
--%> 

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="org.apache.commons.io.output.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        File file;
        int  maxFileSize=5000*1024;
        int maxMemorySize=5000*1024;
        ServletContext context=pageContext.getServletContext();
        String filePath=context.getInitParameter("image1");
        String contentType=request.getContentType();
        if((contentType.indexOf("multipart/form-data")>=0))
        {
            DiskFileItemFactory factory=new DiskFileItemFactory();
            factory.setSizeThreshold(maxMemorySize);
            factory.setRepository(new File("upload"));
            ServletFileUpload upload=new ServletFileUpload(factory);
            upload.setSizeMax(maxFileSize);
            try{
                List fileItem=upload.parseRequest(request);
                Iterator i=fileItem.iterator();
                out.println("<html><head><title>JSP File upload</title></head>");
                out.println("<body>");
                while(i.hasNext())
                {
                    FileItem fi=(FileItem)i.next();
                    if(!fi.isFormField())
                    {
                        String fieldname=fi.getFieldName();
                        String filename=fi.getName();
                        boolean isInMem=fi.isInMemory();
                        long sizeInBytes=fi.getSize();
                        if((filename.lastIndexOf("\\")>=0))
                        {
                            file=new File(filePath+ filename.substring(filename.lastIndexOf("\\")));
                            
                        }
                        else
                        {
                            file=new File(filePath+ filename.substring(filename.lastIndexOf("\\")+1));
                        }
                        fi.write(file);
                        out.println("Uploaded file name :"+filePath +" "+ filename+"<br>");
                        
                    }
                }
                out.println("</body></html>");
                
            }catch(Exception e){
                    System.out.println(e.toString());
                    
            }
        }
        else
        {
            out.println("<html><head><title>Servlet Upload </title></head><body>");
            out.println("no file uploaded </body></html>");
        }
        %>
    </body>
</html>
