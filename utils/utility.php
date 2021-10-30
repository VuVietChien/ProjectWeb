<?php
class Utility
{
    public static $private_key = "indfajfadsfsdaf%UU(*sdxx$2X^FSafdfds)";
    public static function fixSqlInject($sql)
    {
        $sql = str_replace('\\', '\\\\', $sql);
        $sql = str_replace('\'', '\\\'', $sql);
        return $sql;
    }
    public static function getGet($key)
    {
        $value = '';
        if (isset($_GET[$key])) {
            $value = $_GET[$key];
            $value = self::fixSqlInject($value);
        }
        return trim($value);
    }
    public static function getPost($key)
    {
        $value = '';
        if (isset($_POST[$key])) {
            $value = $_POST[$key];
            $value = self::fixSqlInject($value);
        }
        return trim($value);
    }
    public static function getCookie($key)
    {
        $value = '';
        if (isset($_COOKIE[$key])) {
            $value = $_COOKIE[$key];
            $value = self::fixSqlInject($value);
        }
        return trim($value);
    }
    public static function getSecurityMD5($password)
    {
        return md5(md5($password) . self::$private_key);
    }
    public static function getUserToken()
    {
        if (isset($_SESSION['user'])) {
            return $_SESSION['user'];
        }
        $token = self::getCookie('token');
        $sql = "SELECT * FROM tokens WHERE token='$token'";
        $db = new Database();
        $item = $db->executeResult($sql, true);
        if ($item != null) {
            $userId = $item['user_id'];
            $sql = "SELECT * FROM users WHERE id='$userId' AND deleted=0";
            $item = $db->executeResult($sql, true);
            if ($item != null) {
                $_SESSION['user'] = $item;
                return $item;
            }
        }
        return null;
    }
}
