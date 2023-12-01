/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package loginGoogle;

/**
 *
 * @author Min
 */
public class Constants {
    public static String GOOGLE_CLIENT_ID = "352140522561-vpmetjr6bjce1vod9b0cppihhbcgdesh.apps.googleusercontent.com";
    public static String GOOGLE_CLIENT_SECRET = "dujlslz823Da_oyjQ1JJtTbX";
    public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/AccessGoogle/login-google";
    public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
    public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
    public static String GOOGLE_GRANT_TYPE = "authorization_code";
}
