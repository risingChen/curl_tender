<?php

namespace AppBundle\Curl;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CurlTools
 *
 * @author Administrator
 */
class CurlTools {

    //put your code here
    const EXPIRE_MINUTE = 60;
    const EXPIRE_HOUR = 3600;
    const EXPIRE_DAY = 86400;

    private static $_timeout = 3500;
    private static $_conect_timeout = 3600;

    /**
     * curl get请求
     * @param string $url  请求资源连接
     * 
     * return string
     */
    public static function get($url) {
        $ckfile = tempnam("D:\wamp\www\curl_Tender\cookie", 'cookiename');
        $curl = curl_init($url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_BINARYTRANSFER, 1);
        curl_setopt($curl, CURLOPT_HTTPGET, true);
        curl_setopt($curl, CURLOPT_NOSIGNAL, true);
        $timeStamp = time();
        curl_setopt($curl, CURLOPT_FRESH_CONNECT, TRUE);
        curl_setopt($curl, CURLOPT_FOLLOWLOCATION, TRUE);
        $header = array("Cache-Control: no-cache;Referer:{$url};Accept-Encoding: gzip;Cookie: _gscu_273633028=784915426zomh848; _gscs_273633028=84040407u7mhl046|pv:1; _gscbrs_273633028=1; JSESSIONID=0_qHtCTB6zQvtRZ9G9mKz0keD20wDYF6zi5ul5rQrhJFTUiTP8Je!2003651060; Hm_lvt_9f8bda7a6bb3d1d7a9c7196bfed609b5=1484040407; Hm_lpvt_9f8bda7a6bb3d1d7a9c7196bfed609b5=1484041738");
        curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
        curl_setopt($curl, CURLOPT_COOKIE, "Cookie: _gscu_273633028=784915426zomh848; _gscs_273633028=84040407u7mhl046|pv:1; _gscbrs_273633028=1; JSESSIONID=0_qHtCTB6zQvtRZ9G9mKz0keD20wDYF6zi5ul5rQrhJFTUiTP8Je!2003651060; Hm_lvt_9f8bda7a6bb3d1d7a9c7196bfed609b5=1484040407; Hm_lpvt_9f8bda7a6bb3d1d7a9c7196bfed609b5=1484041738");
        curl_setopt($curl, CURLOPT_COOKIEFILE, $ckfile);
        curl_setopt($curl, CURLOPT_VERBOSE, true);
        curl_setopt($curl, CURLOPT_USERAGENT, "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.87 Safari/537.36");
        $result = curl_exec($curl);
        if ($result === false) {
            /* if (self::$_memcache) {
              self::$_memcache->set($memkey, time(), self::EXPIRE_HOUR);
              } */
            return curl_errno($curl);
        } else {
            return $result;
        }
        exit();
    }

    /**
     * curl post请求 
     * @param string $url	 	请求资源连接
     * @param string $param  	请求参数
     * 
     * return string
     */
    public static function post($url, $param, $header) {
        //self::__init_memcache();
        $param_string = gettype($param) !== 'string' ? json_encode($param) : $param;
        $memkey = 'CURL_POST_FAIL_' . md5($url . '_' . $param_string);
        /* if (self::$_memcache) {
          $ret = self::$_memcache->get($memkey);
          if ($ret && intval($ret) + self::EXPIRE_HOUR > time()) {
          return array();
          }
          } */
        $curl = curl_init($url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_BINARYTRANSFER, 1);
        curl_setopt($curl, CURLOPT_CONNECTTIMEOUT_MS, self::$_conect_timeout);
        curl_setopt($curl, CURLOPT_TIMEOUT_MS, self::$_timeout);
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $param);
        curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
        curl_setopt($curl, CURLOPT_AUTOREFERER, 1);
        $result = curl_exec($curl);
        if ($result === false) {
            /* if (self::$_memcache) {
              self::$_memcache->set($memkey, time(), self::EXPIRE_HOUR);
              } */
            return array();
        } else {
            return $result;
        }
    }

    public static function get_timeout($timeout) {
        return self::$_timeout;
    }

    public static function get_connect_timeout($connect_timeout) {
        return self::$_connect_timeout;
    }

    public static function set_timeout($timeout) {
        self::$_timeout = $timeout;
    }

    public static function set_connect_timeout($connect_timeout) {
        self::$_connect_timeout = $connect_timeout;
    }

}
