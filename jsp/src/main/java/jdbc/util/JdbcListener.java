package jdbc.util;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.StringTokenizer;

public class JdbcListener implements ServletContextListener {



    @Override
    public void contextInitialized(ServletContextEvent sce) {

        ServletContext context = sce.getServletContext();
        String drivers = context.getInitParameter("jdbcdriver");

        StringTokenizer tokenizer = new StringTokenizer(drivers, ",");
        while (tokenizer.hasMoreTokens()){
            String jdbcDriver = tokenizer.nextToken();
            try {
                Class.forName(jdbcDriver);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }

    }

    @Override
    public void contextDestroyed(ServletContextEvent arg0) {
        // TODO Auto-generated method stub

    }
}