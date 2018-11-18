/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HsyModel;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import org.apache.commons.fileupload.FileItemStream;

/**
 *
 * @author mantu
 */
public class FileUpload {
    public static boolean processFile(String path , FileItemStream item)
    {
        try{
        File file = new File(path + File.separator +"images");
        if(!file.exists())file.mkdir();
        File savedFile = new File(file.getAbsolutePath()+File.separator +item.getName());
            FileOutputStream fos=new FileOutputStream(savedFile);
            InputStream is = item.openStream();
            int x=0;
            byte []b = new byte[1024]; 
             while((x=is.read(b))!=-1)
             {
                 fos.write(b, 0, x);
             }
             fos.flush();
             fos.close();
             return true;
        
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
}
