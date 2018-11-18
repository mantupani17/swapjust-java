<%-- 
    Document   : offerImageser
    Created on : May 26, 2017, 2:15:29 PM
    Author     : Handshakeyou
--%>
<%@page import="HsyData.Admin_Data"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%!
            File file ;
            int maxSize = 5000 * 10*20;
            int maxFactSize = 5000 * 10*20;
            String path ="E:\\java\\HygoShoppingMart\\web\\Gallery";
            //E:\\java\\HygoShoppingMart\\web\\Gallery
            String paths = null;
            String prod_code; 
            String str = null;
            
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
                       
                      //out.println("<h5>"+y+z+"</h5>");
                    }
                    
                }
                
            }
            // out.println("<h1>"+str+"</h1>");
           int x = Admin_Data.setOfferImage(prod_code,str);
           if(x>0)
           {
               response.sendRedirect("offerImage.jsp");
           }
           
        %>
