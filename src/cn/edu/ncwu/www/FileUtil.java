package cn.edu.ncwu.www;

import android.os.Environment;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: mac
 * Date: 13-3-13
 * Time: 下午3:16
 * To change this template use File | Settings | File Templates.
 */
public class FileUtil {
/*    public static String fileNameTo = "sdcard/NativeSD/boot.img";
    public static String RootfileName = "sdcard/NativeSD/";
    public static String RootromfileFolder = "/NativeSD/";
    */
	 	public static String fileNameTo =Environment.getExternalStorageDirectory().getAbsolutePath()+"/MultiBoot/boot.img" ;
	    public static String RootfileName = Environment.getExternalStorageDirectory().getAbsolutePath()+"/MultiBoot/" ;
	    public static String RootromfileFolder = "/MultiBoot/";

    public static File getFileFrom(String fileNameTemp){
        return new File(RootfileName+fileNameTemp+"/boot.img");
    }
    /**
     * 取得文件结构的方法
     * @param filePath
     */
    public static ArrayList getFileDir(String filePath){
    /* 设置目前所在路径 */
        ArrayList items = new ArrayList<String>();
        File f = new File(filePath);
        File[] files = f.listFiles();
        String fileNameTemp;
        if(files!=null){
    /* 将所有文件添加ArrayList中 */
            for(int i=0;i<files.length;i++){
                if(files[i].isDirectory()){
                    fileNameTemp = files[i].getName();
                    f = getFileFrom(fileNameTemp);
                  //  if (f.exists()){
                        items.add(fileNameTemp);
                    //}
                }
            }
        }
        return items;
    }

    public static boolean copyFile(String fileNameFrom) throws Exception{

        File fileFrom = FileUtil.getFileFrom(fileNameFrom);
        if(!fileFrom.exists() || fileFrom.isDirectory()){
           return false;
        }
        File fileTo = new File(FileUtil.fileNameTo);
        if (fileTo.exists()){
            fileTo.delete();
        }
        int length=2097152;
        FileInputStream in=new FileInputStream(fileFrom);
        FileOutputStream out=new FileOutputStream(fileTo);
        FileChannel inC=in.getChannel();
        FileChannel outC=out.getChannel();
        ByteBuffer b=null;
        while(true){
            if(inC.position()==inC.size()){
                inC.close();
                outC.close();
                return true;
            }
            if((inC.size()-inC.position())<length){
                length=(int)(inC.size()-inC.position());
            }else
                length=2097152;
            b=ByteBuffer.allocateDirect(length);
            inC.read(b);
            b.flip();
            outC.write(b);
            outC.force(false);
        }
    }

    private static boolean delAllFile(String path) {
        boolean flag = false;
        File file = new File(path);
        if (!file.exists()) {
            return flag;
        }
        if (!file.isDirectory()) {
            return flag;
        }
        String[] tempList = file.list();
        File temp = null;
        for (int i = 0; i < tempList.length; i++) {
            if (path.endsWith(File.separator)) {
                temp = new File(path + tempList[i]);
            } else {
                temp = new File(path + File.separator + tempList[i]);
            }
            if (temp.isFile()) {
                temp.delete();
            }
            if (temp.isDirectory()) {
                delFolder(path + "/" + tempList[i]);// 再删除空文件夹
                flag = true;
            }
        }
        return flag;
    }

    private static boolean delFolder(String folderPath) {
        try {
            delAllFile(folderPath); // 删除完里面所有内容
            new File(folderPath).delete(); // 删除空文件夹
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean deleteBoot(String romName){
        if(delFolder(RootfileName+romName))
            if(delFolder(RootromfileFolder+romName))
                return true;
        return false;
    }
}
