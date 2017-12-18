package com.weixin.common.utils;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

public class WeixinUtil {

	/**
     * outputStringWrite
     * @param outputStream
     * @param text
     * @return
     */
	public static boolean outputStreamWrite(OutputStream outputStream,String text){
        try {
            outputStream.write(text.getBytes("utf-8"));
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
