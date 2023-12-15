package config;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ConfigProperties {
    private static ConfigProperties props;
    private Context ctx;
    private ConfigProperties(){
        try {
            this.ctx = new InitialContext();
        } catch (NamingException e) {
            throw new RuntimeException(e);
        }
    }
    public static ConfigProperties initProps(){
        if(props == null) return new ConfigProperties();
        return props;
    }
    public String getPropertie(String key) {
        try {
            String value= (String) ctx.lookup("java:comp/env/" + key);
            return value;
        } catch (NamingException e) {
            return "";
        }
    }
}