//version  1.0
//todo
//package com.huiendianzi.HTCSwitchOS;
//
//import android.app.Activity;
//import android.app.ProgressDialog;
//import android.content.Context;
//import android.content.Intent;
//import android.os.Bundle;
//import android.os.Handler;
//import android.os.Message;
//import android.util.Log;
//import android.view.LayoutInflater;
//import android.view.View;
//import android.view.ViewGroup;
//import android.widget.*;
//import com.tencent.exmobwin.MobWINManager;
//import com.tencent.exmobwin.Type;
//
//import java.io.*;
//import java.nio.ByteBuffer;
//import java.nio.channels.FileChannel;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//
//public class HTCSwitchOSActivity extends Activity
//{
//    ListView listView;
//    MyAdapter myAdapter;
//    /** Called when the activity is first created. */
//    @Override
//    public void onCreate(Bundle savedInstanceState)
//    {
//        super.onCreate(savedInstanceState);
//        setContentView(R.layout.main);
//        MobWINManager.init(this, Type.MOBWIN_BANNER);
//
//        mData = FileUtil.getFileDir(FileUtil.RootfileName);
//
//        listView = (ListView)findViewById(R.id.listView);
//        myAdapter = new MyAdapter(this);
//        listView.setAdapter(myAdapter );
//
//        initButtons();
//
////        listView.setAdapter(new ArrayAdapter<String>(this,android.R.layout.simple_list_item_single_choice,getData()));
//
//        listView.setChoiceMode(ListView.CHOICE_MODE_SINGLE);//如果不使用这个设置，选项中的radiobutton无法响应选中事件
//        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
//            @Override
//            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
//                positionTemp = i;
//                listView.setItemChecked(i, true);
////                myAdapter.notifyDataSetChanged();
//            }
//        });
//
//        progressDialog = new ProgressDialog(HTCSwitchOSActivity.this);
//        progressDialog.setMessage("请等待...");
//        progressDialog.setIndeterminate(true);
//        progressDialog.setCancelable(false);
////                ProgressDialog.show(HTCSwitchOSActivity.this,
////                        "", , true, false);
//
//        canelToast = Toast.makeText(HTCSwitchOSActivity.this, "", Toast.LENGTH_SHORT);
//
//    }
//    private List<String> getData(){
//
//        List<String> data = new ArrayList<String>();
//
//        data.add("测试数据1");
//
//        data.add("测试数据2");
//
//        data.add("测试数据3");
//
//        data.add("测试数据4");
//
//        data.add("测试数据5");
//
//        data.add("测试数据6");
//
//        return data;
//
//    }
//    @Override
//    protected void onDestroy() {
//        MobWINManager.destroy();
//        super.onDestroy();
//    }
//
//    private void initButtons(){
//        Button buttonTemp;
//        buttonTemp = (Button)findViewById(R.id.deletebutton);
//        buttonTemp.setText(R.string.deletebutton);
//        buttonTemp.setOnClickListener(deleteListener);
//
//        buttonTemp = (Button)findViewById(R.id.restartbutton);
//        buttonTemp.setText(R.string.restartbutton);
//        buttonTemp.setOnClickListener(restartListener);
//
//        buttonTemp = (Button)findViewById(R.id.switchbootbutton);
//        buttonTemp.setText(R.string.switchbootbutton);
//        buttonTemp.setOnClickListener(switchbootListener);
//    }
//    View.OnClickListener deleteListener = new View.OnClickListener() {
//        @Override
//        public void onClick(View view) {
////            if(positionTemp==-1){
////                showToast(R.string.select_one_item);
////            }else {
////                if(positionTemp<mData.size()){
////                    try {
////                        if(FileUtil.deleteBoot((String)mData.get(positionTemp))){
////                            mData = FileUtil.getFileDir(FileUtil.RootfileName);
////                            myAdapter.notifyDataSetChanged();
////                            showToast(R.string.delete_ok);
////                        }
////                    } catch (Exception e) {
////                        e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
////                    }
////
////                }
////
////            }
//
//            if(positionTemp==-1){
//                showToast(R.string.select_one_item);
//            }else {
//                if(positionTemp<mData.size()){
//                    new Thread(){
//                        @Override
//                        public void run(){
//                            try {
//                                handler.sendEmptyMessage(showProgressDialogDel);
//                                if(FileUtil.deleteBoot((String)mData.get(positionTemp))){
//                                    mData = FileUtil.getFileDir(FileUtil.RootfileName);
//                                    myAdapter.notifyDataSetChanged();
//                                    handler.sendEmptyMessage(cancleProgressDialogDelSuc);
//                                }else {
//                                    handler.sendEmptyMessage(cancleProgressDialogDelFail);
//                                }
//                            } catch (Exception e) {
//                                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
//                            }
//                        }
//                    }.start();
//                }
//            }
//        }
//    } ;
//    View.OnClickListener restartListener = new View.OnClickListener() {
//        @Override
//        public void onClick(View view) {
//            Su.execShell(Su.reboot);
////            try {
////                Runtime.getRuntime().exec(new String[]{"/system/bin/su","-c","reboot now"});
////            } catch (IOException e) {
////                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
////            }
//        }
//    } ;
//    View.OnClickListener switchbootListener = new View.OnClickListener() {
//        @Override
//        public void onClick(View view) {
//            if(positionTemp==-1){
//                showToast(R.string.select_one_item);
//            }else {
//                if(positionTemp<mData.size()){
//                    new Thread(){
//                        @Override
//                        public void run(){
//                            try {
//                                handler.sendEmptyMessage(showProgressDialogSwitch);
//
//                                if(FileUtil.copyFile((String)mData.get(positionTemp))){
//                                    sleep(3000);
////                                    Su.execShell(Su.switchBoot);
//                                    handler.sendEmptyMessage(cancleProgressDialogSwitchSuc);
//                                }else {
//                                    handler.sendEmptyMessage(cancleProgressDialogSwitchFail);
//                                }
//                            } catch (Exception e) {
//                                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
//                            }
//                        }
//                    }.start();
//                }
//            }
////            //新建线程
////            new Thread(){
////
////                @Override
////                public void run() {
////
////                        if(positionTemp<mData.size()){
////                            try {
////                                if(FileUtil.copyFile((String)mData.get(positionTemp))){
////
////
//////                                    Su.execShell(Su.switchBoot);
////
////                                    showToast(R.string.switch_ok);
////                                }
////                            } catch (Exception e) {
////                                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
////                            }
////
////                        }
////                        try {
////                            sleep(3000);
////                        } catch (InterruptedException e) {
////                            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
////                        }
////                        //向handler发消息
////                    }
////                }}.start();
//
//        }
//    } ;
//
//
//
//
//
//    int positionTemp = -1;
//    ArrayList mData;
//    public class MyAdapter extends BaseAdapter {
//
//        private LayoutInflater mInflater;
//
//        public MyAdapter(Context context){
//            this.mInflater = LayoutInflater.from(context);
//        }
//        @Override
//        public int getCount() {
//            return mData.size();
//        }
//
//        @Override
//        public Object getItem(int arg0) {
//            return mData.get(arg0);
//        }
//
//        @Override
//        public long getItemId(int arg0) {
//            return (long)arg0;
//        }
//
//        @Override
//        public View getView(int position, View convertView, ViewGroup parent) {
//            if (convertView == null) {
//                convertView = mInflater.inflate(
//                        R.layout.layout_cell, null);
//            }
//            TextView tvOS = (TextView) convertView
//                    .findViewById(R.id.textView_os_name);
//            tvOS.setText((String)mData.get(position));
//            ImageView imageView = (ImageView)convertView.findViewById(R.id.imageView) ;
//            if(position == positionTemp){
//                imageView.setImageResource(R.drawable.btn_radio_on_holo_light);
////                convertView.findViewById(R.id.imageView).set(View.VISIBLE);
//            }else{
//                imageView.setImageResource(R.drawable.btn_radio_off_holo_light);
//
////                convertView.findViewById(R.id.imageView).setVisibility(View.INVISIBLE);
//            }
//            return convertView;
//        }
//
//    }
//
//    private final int showToast = 3;
//    private final int cancleToast = 4;
//    private final int showProgressDialogDel = 5;
//    private final int showProgressDialogSwitch = 6;
//    private final int cancleProgressDialogDelSuc = 7;
//    private final int cancleProgressDialogDelFail = 8;
//    private final int cancleProgressDialogSwitchSuc = 9;
//    private final int cancleProgressDialogSwitchFail = 12;
//
//    private ProgressDialog progressDialog;
//    /**
//     * 用Handler来更新UI
//     */
//    private Handler handler = new Handler(){
//
//        @Override
//        public void handleMessage(Message msg) {
//
//            //关闭ProgressDialog
//            switch (msg.what){
//                case showProgressDialogDel:
//                    progressDialog.setTitle(R.string.delete_ing);
//                    progressDialog.show();
//                    break;
//                case showProgressDialogSwitch:
//                    progressDialog.setTitle(R.string.switch_ing);
//                    progressDialog.show();
//                    break;
//                case cancleProgressDialogDelSuc:
//                    if(progressDialog!=null)
//                        progressDialog.cancel();
//                    showToast(R.string.delete_ok);
//                    break;
//                case cancleProgressDialogDelFail:
//                    if(progressDialog!=null)
//                        progressDialog.cancel();
//                    showToast(R.string.delete_fail);
//                    break;
//                case cancleProgressDialogSwitchSuc:
//                    if(progressDialog!=null)
//                        progressDialog.cancel();
//                    showToast(R.string.switch_ok);
//                    break;
//                case cancleProgressDialogSwitchFail:
//                    if(progressDialog!=null)
//                        progressDialog.cancel();
//                    showToast(R.string.switch_fail);
//                    break;
//            }
//        }
//    };
//
//    Toast canelToast;
//    private void showToast(String str){
//        if (canelToast == null) {
//            canelToast = Toast.makeText(HTCSwitchOSActivity.this, str, Toast.LENGTH_SHORT);
//        }
//        canelToast.setText(str);
//        canelToast.show();
//    }
//    private void showToast(int strid){
//        if (canelToast == null) {
//            canelToast = Toast.makeText(HTCSwitchOSActivity.this, strid, Toast.LENGTH_SHORT);
//        }
//        canelToast.setText(strid);
//        canelToast.show();
//    }
//    private void cancelToast(){
//        if (canelToast != null) {
//            canelToast.cancel();
//        }
//    }
//}

////version  1.1
////todo
//package com.huiendianzi.HTCSwitchOS;
//
//import android.app.Activity;
//import android.app.ProgressDialog;
//import android.content.Context;
//import android.content.Intent;
//import android.os.Bundle;
//import android.os.Handler;
//import android.os.Message;
//import android.util.Log;
//import android.view.LayoutInflater;
//import android.view.View;
//import android.view.ViewGroup;
//import android.widget.*;
//import com.adsmogo.adview.AdsMogoLayout;
//
//import java.io.*;
//import java.nio.ByteBuffer;
//import java.nio.channels.FileChannel;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//
//public class HTCSwitchOSActivity extends Activity
//{
//    ListView listView;
//    MyAdapter myAdapter;
//    /** Called when the activity is first created. */
//    @Override
//    public void onCreate(Bundle savedInstanceState)
//    {
//        super.onCreate(savedInstanceState);
//        setContentView(R.layout.main);
//
//        mData = FileUtil.getFileDir(FileUtil.RootfileName);
//
//        listView = (ListView)findViewById(R.id.listView);
//        myAdapter = new MyAdapter(this);
//        listView.setAdapter(myAdapter );
//
//        initButtons();
//
////        listView.setAdapter(new ArrayAdapter<String>(this,android.R.layout.simple_list_item_single_choice,getData()));
//
//        listView.setChoiceMode(ListView.CHOICE_MODE_SINGLE);//如果不使用这个设置，选项中的radiobutton无法响应选中事件
//        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
//            @Override
//            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
//                positionTemp = i;
//                listView.setItemChecked(i, true);
////                myAdapter.notifyDataSetChanged();
//            }
//        });
//
//        progressDialog = new ProgressDialog(HTCSwitchOSActivity.this);
//        progressDialog.setMessage("请等待...");
//        progressDialog.setIndeterminate(true);
//        progressDialog.setCancelable(false);
////                ProgressDialog.show(HTCSwitchOSActivity.this,
////                        "", , true, false);
//
//        canelToast = Toast.makeText(HTCSwitchOSActivity.this, "", Toast.LENGTH_LONG);
//
//    }
//
//    @Override
//    protected void onDestroy() {
//        AdsMogoLayout.clear();
//        super.onDestroy();
//    }
//
//    private void initButtons(){
//        Button buttonTemp;
//        buttonTemp = (Button)findViewById(R.id.deletebutton);
//        buttonTemp.setText(R.string.deletebutton);
//        buttonTemp.setOnClickListener(deleteListener);
//
//        buttonTemp = (Button)findViewById(R.id.restartbutton);
//        buttonTemp.setText(R.string.restartbutton);
//        buttonTemp.setOnClickListener(restartListener);
//
//        buttonTemp = (Button)findViewById(R.id.switchbootbutton);
//        buttonTemp.setText(R.string.switchbootbutton);
//        buttonTemp.setOnClickListener(switchbootListener);
//    }
//    View.OnClickListener deleteListener = new View.OnClickListener() {
//        @Override
//        public void onClick(View view) {
////            if(positionTemp==-1){
////                showToast(R.string.select_one_item);
////            }else {
////                if(positionTemp<mData.size()){
////                    try {
////                        if(FileUtil.deleteBoot((String)mData.get(positionTemp))){
////                            mData = FileUtil.getFileDir(FileUtil.RootfileName);
////                            myAdapter.notifyDataSetChanged();
////                            showToast(R.string.delete_ok);
////                        }
////                    } catch (Exception e) {
////                        e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
////                    }
////
////                }
////
////            }
//
//            if(positionTemp==-1){
//                showToast(R.string.select_one_item);
//            }else {
//                if(positionTemp<mData.size()){
//                    try {
//                        handler.sendEmptyMessage(showProgressDialogDel);
//                        if(FileUtil.deleteBoot((String)mData.get(positionTemp))){
//                            mData = FileUtil.getFileDir(FileUtil.RootfileName);
//                            myAdapter.notifyDataSetChanged();
//                            positionTemp = -1;
//                            handler.sendEmptyMessage(cancleProgressDialogDelSuc);
//                        }else {
//                            handler.sendEmptyMessage(cancleProgressDialogDelFail);
//                        }
//                    } catch (Exception e) {
//                        e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
//                    }
//                }
//            }
//        }
//    } ;
//    View.OnClickListener restartListener = new View.OnClickListener() {
//        @Override
//        public void onClick(View view) {
////            Su.execShell(Su.reboot);
////            try {
////                Runtime.getRuntime().exec(new String[]{"/system/bin/su","-c","reboot now"});
////            } catch (IOException e) {
////                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
////            }
//        }
//    } ;
//    View.OnClickListener switchbootListener = new View.OnClickListener() {
//        @Override
//        public void onClick(View view) {
//            if(positionTemp==-1){
//                showToast(R.string.select_one_item);
//            }else {
//                if(positionTemp<mData.size()){
//                    try {
//                        handler.sendEmptyMessage(showProgressDialogSwitch);
//
//                        if(FileUtil.copyFile((String)mData.get(positionTemp))){
//                            RootCommand(switchBootCommand);
//                            handler.sendEmptyMessage(cancleProgressDialogSwitchSuc);
//                        }else {
//                            handler.sendEmptyMessage(cancleProgressDialogSwitchFail);
//                        }
//                    } catch (Exception e) {
//                        e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
//                    }
//                }
//            }
//        }
//    } ;
//
//
//
//
//
//    int positionTemp = -1;
//    ArrayList mData;
//    public class MyAdapter extends BaseAdapter {
//
//        private LayoutInflater mInflater;
//
//        public MyAdapter(Context context){
//            this.mInflater = LayoutInflater.from(context);
//        }
//        @Override
//        public int getCount() {
//            return mData.size();
//        }
//
//        @Override
//        public Object getItem(int arg0) {
//            return mData.get(arg0);
//        }
//
//        @Override
//        public long getItemId(int arg0) {
//            return (long)arg0;
//        }
//
//        @Override
//        public View getView(int position, View convertView, ViewGroup parent) {
//            if (convertView == null) {
//                convertView = mInflater.inflate(
//                        R.layout.layout_cell, null);
//            }
//            TextView tvOS = (TextView) convertView
//                    .findViewById(R.id.textView_os_name);
//            tvOS.setText((String)mData.get(position));
//            ImageView imageView = (ImageView)convertView.findViewById(R.id.imageView) ;
//            if(position == positionTemp){
//                imageView.setImageResource(R.drawable.btn_radio_on_holo_light);
////                convertView.findViewById(R.id.imageView).set(View.VISIBLE);
//            }else{
//                imageView.setImageResource(R.drawable.btn_radio_off_holo_light);
//
////                convertView.findViewById(R.id.imageView).setVisibility(View.INVISIBLE);
//            }
//            return convertView;
//        }
//
//    }
//
//    private final int showToast = 3;
//    private final int cancleToast = 4;
//    private final int showProgressDialogDel = 5;
//    private final int showProgressDialogSwitch = 6;
//    private final int cancleProgressDialogDelSuc = 7;
//    private final int cancleProgressDialogDelFail = 8;
//    private final int cancleProgressDialogSwitchSuc = 9;
//    private final int cancleProgressDialogSwitchFail = 12;
//
//    private ProgressDialog progressDialog;
//    /**
//     * 用Handler来更新UI
//     */
//    private Handler handler = new Handler(){
//
//        @Override
//        public void handleMessage(Message msg) {
//
//            //关闭ProgressDialog
//            switch (msg.what){
//                case showProgressDialogDel:
//                    progressDialog.setTitle(R.string.delete_ing);
//                    progressDialog.show();
//                    break;
//                case showProgressDialogSwitch:
//                    progressDialog.setTitle(R.string.switch_ing);
//                    progressDialog.show();
//                    break;
//                case cancleProgressDialogDelSuc:
//                    if(progressDialog!=null)
//                        progressDialog.cancel();
//                    showToast(R.string.delete_ok);
//                    break;
//                case cancleProgressDialogDelFail:
//                    if(progressDialog!=null)
//                        progressDialog.cancel();
//                    showToast(R.string.delete_fail);
//                    break;
//                case cancleProgressDialogSwitchSuc:
//                    if(progressDialog!=null)
//                        progressDialog.cancel();
//                    showToast(R.string.switch_ok);
//                    break;
//                case cancleProgressDialogSwitchFail:
//                    if(progressDialog!=null)
//                        progressDialog.cancel();
//                    showToast(R.string.switch_fail);
//                    break;
//            }
//        }
//    };
//
//    Toast canelToast;
//    private void showToast(String str){
//        if (canelToast == null) {
//            canelToast = Toast.makeText(HTCSwitchOSActivity.this, str, Toast.LENGTH_SHORT);
//        }
//        canelToast.setText(str);
//        canelToast.show();
//    }
//    private void showToast(int strid){
//        if (canelToast == null) {
//            canelToast = Toast.makeText(HTCSwitchOSActivity.this, strid, Toast.LENGTH_SHORT);
//        }
//        canelToast.setText(strid);
//        canelToast.show();
//    }
//    private void cancelToast(){
//        if (canelToast != null) {
//            canelToast.cancel();
//        }
//    }
//
//    //如果需要修改文件权限则 将 以下字符串传入以下方法  777则是 rwx-rwx-rwx权限
////String cmd= "chmod 777 " + java.io.File.separator + "data"
//    //+ java.io.File.separator + "system" + java.io.File.separator
//    //+ "accounts.db";
//    private static final String rebootCommand = "";
//    private static final String switchBootCommand = "flash_image boot /sdcard/Nativesd/boot.img";
//
//    public static boolean RootCommand(String command) {
//        Process process = null;
//        DataOutputStream os = null;
//        try {
//            process = Runtime.getRuntime().exec("su");
//            os = new DataOutputStream(process.getOutputStream());
//            os.writeBytes(command + "\n");
//            os.writeBytes("exit\n");
//            os.flush();
//            process.waitFor();
//        } catch (Exception e) {
//            Log.e("*** DEBUG ***", "ROOT REE"
//                    + e.getMessage());
//            return false;
//        } finally {
//            try {
//                if (os != null) {
//                    os.close();
//                }
//                process.destroy();
//            } catch (Exception e) {
//                // nothing
//            }
//        }
//        return true;
//
//    }
//
//}

//version  1.1
//todo
package cn.edu.ncwu.www;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.baidu.mobads.AdView;

public class MTKMainActivity extends Activity {
	ListView listView;
	MyAdapter myAdapter;
	String RomeName;
	String CurrentUseRom = null;
	private ProgressDialog progressDialog;
	final static int REBOOT = 0;
	final static int SWITCH = 1;
	final static int DELET = 2;
	TextView tx;

	class MyHandler extends Handler {
		@Override
		public void handleMessage(Message msg) {
			// TODO Auto-generated method stub
			super.handleMessage(msg);
			switch (msg.what) {
			case REBOOT:
				RootCommand("reboot");
				break;
			case DELET:
				if (CurrentUseRom.equals(mData.get(positionTemp))) {
					Toast.makeText(MTKMainActivity.this, "请切换到其他系统删除本系统！！",
							Toast.LENGTH_LONG).show();
				} else
					new DeleteFileTask().execute(0);
				// new otaTask().execute(0);
				break;
			case SWITCH:
				new SwitchBootFileTask().execute(0);
				break;
			}

		}
	}

	private static final String rebootCommand = "/system/xbin/shutdown -r";
	// private static final String switchBootCommand =
	// "flash_image sboot tmp/s_boot.img";
	/*
	 * private String switchBootCommand = "busybox dd if=" +
	 * Environment.getExternalStorageDirectory().getAbsolutePath() +
	 * "/MultiBoot/" + RomeName + "/boot.img of=/dev/bootimg";
	 */
	private String switchBootCommand = "busybox dd if="
			+ Environment.getExternalStorageDirectory().getAbsolutePath()
			+ "/MultiBoot/boot.img of=/dev/bootimg";
	RelativeLayout adC = null;
	MyHandler handler = null;
	AdView baiduView = null;

	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		CurrentUseRom = do_exec("cat /init.rc");
		setContentView(R.layout.main);
		adC = (RelativeLayout) findViewById(R.id.adId);
		baiduView = new AdView(this);
		adC.addView(baiduView);
		//adC.setVisibility(View.GONE);

		handler = new MyHandler();
		RootCommand("/system/xbin/busybox mount -o remount,rw /");

		mData = FileUtil.getFileDir(FileUtil.RootfileName);
		if (CurrentUseRom.equals("NAND")) {
			String path = Environment.getExternalStorageDirectory()
					.getAbsolutePath() + "/MultiBoot/NAND";
			Log.i("mylog", path);
			File file = new File(path);
			if (file.isDirectory()) {
				File boot = new File(path + "boo.img");
				if (boot.exists())
					boot.delete();
			}
			file.mkdirs();

			/*
			 * RootCommand("busybox dd if=/dev/bootimg of=" +
			 * Environment.getExternalStorageDirectory() .getAbsolutePath() +
			 * "/MultiBoot/NAND/boot.img bs=6M count=1");
			 */

		}

		// Toast.makeText(this, "已经自动备份机身boot.img到NAND文件夹'", 2000).show();
		SharedPreferences prefer = getPreferences(MODE_PRIVATE);
		final SharedPreferences.Editor editor = prefer.edit();
		if (prefer.getBoolean("isfirst", true)) {
			AlertDialog d = new AlertDialog.Builder(this).setTitle("说明")
					.setMessage("此软件只用来交流\n如果使用给你的手机带来损坏\n后果自负\n\n\n交流群请看菜单")
					.setPositiveButton("不在提醒", new OnClickListener() {

						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							editor.putBoolean("isfirst", false);
							editor.commit();

						}
					}).setNegativeButton("下一次再说", null).show();
		}

		listView = (ListView) findViewById(R.id.listView);
		myAdapter = new MyAdapter(this);
		listView.setAdapter(myAdapter);
		// new otaTask().execute(0) ;

		initButtons();
		Toast.makeText(this, "你当前使用的ROM是：" + CurrentUseRom, 2000).show();

		listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> adapterView, View view,
					int i, long l) {
				positionTemp = i;

				myAdapter.notifyDataSetChanged();
			}
		});
		listView.setOnLongClickListener(new OnLongClickListener() {

			@Override
			public boolean onLongClick(View v) {
				// TODO Auto-generated method stub
				new otaTask().execute(0);
				return false;
			}
		});

		progressDialog = new ProgressDialog(MTKMainActivity.this);
		progressDialog.setMessage("努力工作中,请等待...");
		progressDialog.setIndeterminate(true);
		progressDialog.setCancelable(false);

		canelToast = Toast
				.makeText(MTKMainActivity.this, "", Toast.LENGTH_LONG);

	}

	public boolean onCreateOptionsMenu(Menu paramMenu) {
		getMenuInflater().inflate(R.menu.menu, paramMenu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case R.id.about:
			item.setTitle("关于");
			AlertDialog d = new AlertDialog.Builder(this).setTitle("关于")
					.setMessage("此软件凭个人兴趣开发\n修改请的本人批准\n如果给你设备带来任何损害不承担任何责任")
					.setPositiveButton("确定", new OnClickListener() {

						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							dialog.dismiss();
						}
					}).show();
			break;
		case R.id.exit:
			finish();
			break;
		case R.id.comu:
			AlertDialog c = new AlertDialog.Builder(this).setTitle("交流羣")
					.setMessage("群号：335708959\n本群可以交流多系统问\n一起完善多系统\n欢迎加入")
					.setPositiveButton("确定", new OnClickListener() {

						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							dialog.dismiss();
						}
					}).setIcon(R.drawable.icon).show();
			break;
		/*
		 * case R.id.fuck: AlertDialog f = new AlertDialog.Builder(this)
		 * .setTitle("服不服？！") .setMessage(
		 * "原来是你@你服不服！\n赶你出师门是有原因的！\n反编译我辛苦写的apk\n这个apk UI是伤大朋友写的！\n当时不能重启删除\n爷爷辛苦修复\n你竟然说我用伤大的\n你还尽然无耻的挂上自己的大名\n你说爷爷骂你你服不服！\n还有那个混账孩子！\n爷爷给你做的软件\n里面写入你！\n让你遗臭下！\n有本事你不刷\n踢你是不是不服？！\n（不针对其他机油，莫怪）"
		 * )
		 * 
		 * .setPositiveButton("服不服？！", new OnClickListener() {
		 * 
		 * @Override public void onClick(DialogInterface dialog, int which) { //
		 * TODO Auto-generated method stub Toast.makeText(MTKMainActivity.this,
		 * "孙子就是孙子不知悔改哈哈哈", 5000).show(); } }).setIcon(R.drawable.icon)
		 * .setNegativeButton("服", new OnClickListener() {
		 * 
		 * @Override public void onClick(DialogInterface dialog, int which) { //
		 * TODO Auto-generated method stub dialog.dismiss();
		 * Toast.makeText(MTKMainActivity.this, "这还像回事", 5000) .show();
		 * 
		 * } }).show(); break;
		 */
		case R.id.setting:
			AlertDialog e = new AlertDialog.Builder(this).setTitle("声明")
					.setMessage("本软件不经本人允许禁止反编译修改再发布！\n\n\n感谢未曾有爱的测试。")
					.setPositiveButton("同意", new OnClickListener() {

						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							dialog.dismiss();
						}
					}).setIcon(R.drawable.icon).show();

		}
		return true;
	}

	@Override
	protected void onDestroy() {

		cancelToast();
		super.onDestroy();
	}

	private void initButtons() {
		Button buttonTemp;
		buttonTemp = (Button) findViewById(R.id.deletebutton);
		buttonTemp.setText(R.string.deletebutton);
		buttonTemp.setOnClickListener(deleteListener);

		buttonTemp = (Button) findViewById(R.id.restartbutton);
		buttonTemp.setText(R.string.restartbutton);
		buttonTemp.setOnClickListener(restartListener);

		buttonTemp = (Button) findViewById(R.id.switchbootbutton);
		buttonTemp.setText(R.string.switchbootbutton);
		buttonTemp.setOnClickListener(switchbootListener);
	}

	View.OnClickListener deleteListener = new View.OnClickListener() {
		@Override
		public void onClick(View view) {
			// new DeleteFileTask().execute(0);
			if (RomeName == null) {
				Toast.makeText(MTKMainActivity.this, "请先选择一个系统", 2000).show();

			} else {
				AlertDialog d = new AlertDialog.Builder(MTKMainActivity.this)
						.setTitle("删除").setMessage("是否删除ROM:" + RomeName)
						.setPositiveButton("是", new OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog,
									int which) {
								// TODO Auto-generated method stub
								Message msg = handler.obtainMessage();
								msg.what = DELET;
								handler.sendMessage(msg);
								dialog.dismiss();

							}
						}).setNegativeButton("否", new OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog,
									int which) {
								// TODO Auto-generated method stub
								dialog.dismiss();

							}
						}).show();
			}
		}
	};
	View.OnClickListener restartListener = new View.OnClickListener() {
		@Override
		public void onClick(View view) {
			// RootCommand(rebootCommand);
			// execCommandLine("reboot") ;
			AlertDialog d = new AlertDialog.Builder(MTKMainActivity.this)
					.setTitle("是否重启")
					.setPositiveButton("是", new OnClickListener() {

						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							RootCommand("reboot");
							dialog.dismiss();
						}
					}).setNegativeButton("否", new OnClickListener() {

						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							dialog.dismiss();
						}
					}).show();

			// Log.e("mmm", Environment.getRootDirectory().getPath());
			// Log.e("mmm", Environment.getRootDirectory().getName());
			// String[] mm = Environment.getRootDirectory().list();
			// for (int i = 0;i< mm.length;i++){
			// Log.e("mmm", mm[i]);
			//
			// }
		}
	};

	public static void a() {
		a(" -reboot");
	}

	public void reboot() {
		// execCommandLine("#!/system/bin/sh");
		Toast.makeText(this, "Rebooting...", 1).show();
		execCommandLine("reboot");
	}

	private static String a = "";

	private static void a(String paramString) {
		try {
			Process localProcess = Runtime.getRuntime().exec("su");
			OutputStream localOutputStream = localProcess.getOutputStream();
			DataOutputStream localDataOutputStream = new DataOutputStream(
					localOutputStream);
			String str1 = String.valueOf(a);
			String str2 = str1 + paramString + "\n";
			localDataOutputStream.writeBytes(str2);
			localDataOutputStream.writeBytes("exit\n");
			localDataOutputStream.flush();
			localDataOutputStream.close();
			localProcess.waitFor();
			localProcess.destroy();
			return;
		} catch (Exception localException) {
		}
	}

	View.OnClickListener switchbootListener = new View.OnClickListener() {
		@Override
		public void onClick(View view) {
			// new SwitchBootFileTask().execute(0);
			// switchSystem(RomeName);
			if (RomeName == null) {
				Toast.makeText(MTKMainActivity.this, "请选择一个系统", 1000).show();
			} else {
				AlertDialog d = new AlertDialog.Builder(MTKMainActivity.this)
						.setTitle("是否切换").setMessage("是否切换ROM为：" + RomeName)
						.setPositiveButton("确定", new OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog,
									int which) {
								// TODO Auto-generated method stub
								Message msg = handler.obtainMessage();
								msg.what = SWITCH;
								handler.sendMessage(msg);
								dialog.dismiss();

							}
						}).setNegativeButton("取消", new OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog,
									int which) {
								// TODO Auto-generated method stub
								dialog.dismiss();

							}
						}).show();
			}
		}
	};

	int positionTemp = -1;
	ArrayList mData;

	public class MyAdapter extends BaseAdapter {

		private LayoutInflater mInflater;

		public MyAdapter(Context context) {
			this.mInflater = LayoutInflater.from(context);
		}

		@Override
		public int getCount() {
			return mData.size();
		}

		@Override
		public Object getItem(int arg0) {
			return mData.get(arg0);
		}

		@Override
		public long getItemId(int arg0) {
			return (long) arg0;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			if (convertView == null) {
				convertView = mInflater.inflate(R.layout.layout_cell, null);
			}
			TextView tvOS = (TextView) convertView
					.findViewById(R.id.textView_os_name);
			String text = (String) mData.get(position);
			tvOS.setText(text);
			if (CurrentUseRom.equals(text))
				tvOS.setTextColor(getResources().getColor(R.color.orange));
			ImageView imageView = (ImageView) convertView
					.findViewById(R.id.imageView);
			if (position == positionTemp) {
				imageView.setImageResource(R.drawable.btn_radio_on_holo_light);
				RomeName = (String) mData.get(position);
			} else {
				imageView.setImageResource(R.drawable.btn_radio_off_holo_light);
			}
			return convertView;
		}

	}

	Toast canelToast;

	private void showToast(int strid) {
		if (canelToast == null) {
			canelToast = Toast.makeText(MTKMainActivity.this, strid,
					Toast.LENGTH_SHORT);
		}
		canelToast.setText(strid);
		canelToast.show();
	}

	private void cancelToast() {
		if (canelToast != null) {
			canelToast.cancel();
		}
	}

	void execCommandLine(String cmd)

	{
		Process process = null;
		Runtime runtime = null;
		runtime = Runtime.getRuntime();
		try {
			process = runtime.exec("su");
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		OutputStream ops = process.getOutputStream();
		OutputStreamWriter osw = new OutputStreamWriter(ops);
		try {
			osw.write(cmd);
			osw.flush();
			process.waitFor();
		} catch (Exception e) {
			Log.e("execCommandLine", "Command resulted in an IO Exception:"
					+ cmd);
			Toast.makeText(MTKMainActivity.this,
					"Error while trying to execute" + cmd, 1000).show();

		} finally {
			try {
				if (osw != null)
					osw.close();
			} catch (Exception e) {

			}
		}
		int i = process.exitValue();
		if (i != 0) {
			StringBuilder sb = new StringBuilder("command return error");
			sb.append(cmd);
			sb.append("\n Exit code :");
			sb.append(i);
			Log.e("execCommandLine", sb.toString());
			StringBuilder sb1 = new StringBuilder(
					"Error while trying to execute");
			sb1.append(cmd);
			Toast.makeText(MTKMainActivity.this, sb1.toString(), 1000).show();
		}
	}

	String do_exec(String cmd) {
		Pattern pattern = Pattern.compile("MultiBoot/(.+?)/system");
		BufferedReader in = null;
		Process p = null;
		DataOutputStream os = null;

		try {
			p = Runtime.getRuntime().exec("su");
			in = new BufferedReader(new InputStreamReader(p.getInputStream()));
			os = new DataOutputStream(p.getOutputStream());
			os.writeBytes(cmd + "\n");
			os.writeBytes("exit\n");
			os.flush();
			try {
				p.waitFor();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String line = null;
			while ((line = in.readLine()) != null) {
				Matcher matcher = pattern.matcher(line);

				if (matcher.find()) {
					// Log.i("mylog", matcher.group(1));
					return matcher.group(1);
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (in != null) {
					in.close();
					if (os != null)
						os.close();
				}
				p.destroy();

			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		// text.setText(s);
		return "NAND";
	}

	// 如果需要修改文件权限则 将 以下字符串传入以下方法 777则是 rwx-rwx-rwx权限
	// String cmd= "chmod 777 " + java.io.File.separator + "data"
	// + java.io.File.separator + "system" + java.io.File.separator
	// + "accounts.db";

	public static boolean RootCommand(String command) {
		Process process = null;
		DataOutputStream os = null;
		try {

			process = Runtime.getRuntime().exec("su");
			os = new DataOutputStream(process.getOutputStream());
			os.writeBytes(command + "\n");
			os.writeBytes("exit\n");
			os.flush();
			process.waitFor();
		} catch (Exception e) {
			Log.e("*** DEBUG ***", "ROOT REE" + e.getMessage());
			return false;
		} finally {
			try {
				if (os != null) {
					os.close();
				}
				process.destroy();
			} catch (Exception e) {
				// nothing
			}
		}
		return true;

	}

	public static boolean covert_ota(String path, String zip, String rom) {
		Process process = null;
		DataOutputStream os = null;

		try {

			process = Runtime.getRuntime().exec("su");
			os = new DataOutputStream(process.getOutputStream());
			os.writeBytes("cp " + path + "/" + zip
					+ "  /data/local/tmp/ota.zip\n");
			os.writeBytes("cp -rf " + path + "/" + "tools data/local/tmp \n");
			os.writeBytes("cd /data/local/tmp \n");
			os.writeBytes("chmod -R 755 tools \n");
			os.writeBytes("chmod 755 temp \n");
			os.writeBytes("unzip -n " + zip + " -d temp\n");
			os.writeBytes("cd tools\n");
			os.writeBytes("cp updater-script-mod ../temp/META-INF/com/google/android/updater-script-mod\n");
			os.writeBytes("cd ../temp/META-INF/com/google/android\n");
			os.writeBytes("sed -i '/^mount/d' updater-script\n");
			os.writeBytes("mv updater-script updater-script-old\n");
			os.writeBytes("cat updater-script-mod >> updater-script\n");
			os.writeBytes("cat updater-script-old >> updater-script\n");
			os.writeBytes("sed -i 's/ROM_NAME/" + rom + "/g' updater-script \n");
			os.writeBytes("rm updater-script-old\n");
			os.writeBytes("rm updater-script-mod\n");
			os.writeBytes("cd ../../../..\n");
			os.writeBytes("mkdir -p ../out\n");
			os.writeBytes("zip -r  " + rom + "_ota.zip ./*\n");
			os.writeBytes("cp " + rom + "_ota.zip /sdcard/upadate.zip\n");

			os.writeBytes("cd ..\n");
			// os.writeBytes("rm -rf temp\n");
			os.writeBytes("exit\n");
			os.flush();
			process.waitFor();
		} catch (Exception e) {
			Log.e("*** DEBUG ***", "ROOT REE" + e.getMessage());
			return false;
		} finally {
			try {
				if (os != null) {
					os.close();
				}
				process.destroy();
			} catch (Exception e) {
				// nothing
			}
		}
		return true;

	}

	void deleteSystem(String name) {
		// RootCommand("rm -rf sdcard/NativeSD/" + name);
		// RootCommand("rm -rf NativeSD/" + name);
		if (CurrentUseRom.equals(name)) {
			// Toast.makeText(MTKMainActivity.this,
			// "请切换到别的系统删除本系统",Toast.LENGTH_LONG).show();
			Log.d("currentRom", CurrentUseRom);
			return;
		}
		if (!CurrentUseRom.equals("NAND")) {

			Log.i("dle", "rm -rf "
					+ Environment.getExternalStorageDirectory()
							.getAbsolutePath() + "/MultiBoot/" + name);
			RootCommand("rm -rf /MultiBoot/" + name);
		} else
			RootCommand("rm -rf /data/" + name);
		RootCommand("rm -rf "
				+ Environment.getExternalStorageDirectory().getAbsolutePath()
				+ "/MultiBoot/" + name);

	}

	void switchSystem(String name) {

		// RootCommand("rm -rf sdcard/NativeSD/zImage");
		// RootCommand("rm -rf sdcard/NativeSD/initrd.gz");
		// RootCommand("cp sdcard/nativeSD/" + name +
		// "/initrd.gz sdcard/NativeSD");
		// RootCommand("cp sdcard/nativeSD/" + name +
		// "/zImage sdcard/NativeSD");
		// RootCommand("cp sdcard/nativeSD/mkbootimg tmp/");
		// File localFile = new File("tmp/");
		// if ((!localFile.exists()) && (!localFile.isDirectory()))
		// RootCommand("mkdir tmp/");
		// RootCommand("cp sdcard/nativeSD/mkbootimg.sh tmp/");
		// RootCommand("cp sdcard/nativeSD/mkbootimg tmp/");
		// RootCommand("chmod 777 tmp/*");
		// RootCommand("tmp/mkbootimg --kernel sdcard/nativeSD/zImage --ramdisk sdcard/nativeSD/initrd.gz --cmdline \"rel_path="
		// + name.toString() + "\" --base 0x11800000 -o tmp/s_boot.img");
		// RootCommand("system/bin/flash_image sboot tmp/s_boot.img");
		// RootCommand("rm -rf tmp/");
		// Toast.makeText(HTCSwitchOSActivity.this,
		// "CLK scipts execution ended.",
		// 1).show();
		RootCommand("rm "
				+ Environment.getExternalStorageDirectory().getAbsolutePath()
				+ "/MultiBoot/boot.img");
		RootCommand("cp -rf "
				+ Environment.getExternalStorageDirectory().getAbsolutePath()
				+ "/MultiBoot/" + name + "/boot.img" + " "
				+ Environment.getExternalStorageDirectory().getAbsolutePath()
				+ "/MultiBoot/boot.img");
	}

	private final int selectOneItem = 3;
	private final int cancleProgressDialogSuc = 7;
	private final int cancleProgressDialogFail = 8;

	class DeleteFileTask extends AsyncTask<Integer, Integer, Integer> {

		@Override
		protected void onPreExecute() {
			super.onPreExecute();
			progressDialog.show();
		}

		@Override
		protected Integer doInBackground(Integer... params) {
			if (positionTemp == -1) {
				return selectOneItem;
			} else {
				if (positionTemp < mData.size()) {
					try {
						// if (FileUtil.deleteBoot((String) mData
						// .get(positionTemp))) {
						// Thread.sleep(3000);
						deleteSystem((String) mData.get(positionTemp));
						return cancleProgressDialogSuc;
						// }
					} catch (Exception e) {
						e.printStackTrace(); // To change body of catch
												// statement use File | Settings
												// | File Templates.
					}
				}
				return cancleProgressDialogFail;

			}
		}

		@Override
		protected void onPostExecute(Integer result) {
			progressDialog.dismiss();
			switch (result) {
			case selectOneItem:
				showToast(R.string.select_one_item);
				break;
			case cancleProgressDialogFail:
				showToast(R.string.delete_fail);
				break;
			case cancleProgressDialogSuc:
				mData = FileUtil.getFileDir(FileUtil.RootfileName);
				positionTemp = -1;
				myAdapter.notifyDataSetChanged();
				showToast(R.string.delete_ok);
				break;
			}
		}
	}

	class SwitchBootFileTask extends AsyncTask<Integer, Integer, Integer> {

		@Override
		protected void onPreExecute() {
			super.onPreExecute();
			progressDialog.show();
		}

		@Override
		protected Integer doInBackground(Integer... params) {

			if (positionTemp == -1) {
				return selectOneItem;
			} else {
				if (positionTemp < mData.size()) {
					try {
						// if (FileUtil.copyFile((String)
						// mData.get(positionTemp))) {
						// switchSystem((String) mData.get(positionTemp));
						/*
						 * switchBootCommand = "busybox dd if=" +
						 * Environment.getExternalStorageDirectory
						 * ().getAbsolutePath() + "/MultiBoot/" + RomeName +
						 * "/boot.img of=/dev/bootimg"; Log.i("swich"
						 * ,switchBootCommand ) ;
						 * RootCommand(switchBootCommand); Log.i("swich",
						 * switchBootCommand);
						 */
						// covert_ota("/sdcard/MultiRom", "update.zip", "miui");
						switchSystem(RomeName);
						RootCommand(switchBootCommand);

						return cancleProgressDialogSuc;
						// }
					} catch (Exception e) {
						e.printStackTrace(); // To change body of catch
												// statement use File | Settings
												// | File Templates.
					}
				}
				return cancleProgressDialogFail;

			}
		}

		@Override
		protected void onPostExecute(Integer result) {
			progressDialog.dismiss();
			switch (result) {
			case selectOneItem:
				showToast(R.string.select_one_item);
				break;
			case cancleProgressDialogFail:
				showToast(R.string.switch_fail);
				break;
			case cancleProgressDialogSuc:
				showToast(R.string.switch_ok);
				break;
			}
		}
	}

	class otaTask extends AsyncTask<Integer, Integer, Integer> {

		@Override
		protected void onPreExecute() {
			super.onPreExecute();
			progressDialog.show();
		}

		@Override
		protected Integer doInBackground(Integer... params) {

			if (positionTemp == -1) {
				return selectOneItem;
			} else {
				if (positionTemp < mData.size()) {
					try {
						// if (FileUtil.copyFile((String)
						// mData.get(positionTemp))) {
						// switchSystem((String) mData.get(positionTemp));
						/*
						 * switchBootCommand = "busybox dd if=" +
						 * Environment.getExternalStorageDirectory
						 * ().getAbsolutePath() + "/MultiBoot/" + RomeName +
						 * "/boot.img of=/dev/bootimg"; Log.i("swich"
						 * ,switchBootCommand ) ;
						 * RootCommand(switchBootCommand); Log.i("swich",
						 * switchBootCommand);
						 */
						covert_ota("/sdcard/MultiBoot'", "update.zip", "miui");
						return cancleProgressDialogSuc;
						// }
					} catch (Exception e) {
						e.printStackTrace(); // To change body of catch
												// statement use File | Settings
												// | File Templates.
					}
				}
				return cancleProgressDialogFail;

			}
		}

		@Override
		protected void onPostExecute(Integer result) {
			progressDialog.dismiss();
			switch (result) {
			case selectOneItem:
				showToast(R.string.select_one_item);
				break;
			case cancleProgressDialogFail:
				showToast(R.string.switch_fail);
				break;
			case cancleProgressDialogSuc:
				showToast(R.string.switch_ok);
				break;
			}
		}
	}

}
