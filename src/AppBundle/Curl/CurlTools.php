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
        $curl = curl_init($url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_BINARYTRANSFER, 1);
        curl_setopt($curl, CURLOPT_HTTPGET, true);
        curl_setopt($curl, CURLOPT_NOSIGNAL, true);
        curl_setopt($curl, CURLOPT_USERAGENT, "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36");
        $result = curl_exec($curl);
        
        if ($result === false) {
            /* if (self::$_memcache) {
              self::$_memcache->set($memkey, time(), self::EXPIRE_HOUR);
              } */
            return curl_errno($curl);
        } else {
            return $result;
        }
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
