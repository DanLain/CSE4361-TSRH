package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.model.HashMD5;
import java.io.PrintStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package edu.uta.tsrh.db.commandpattern:
//            MySQLCmd

public class ChangeDefaultPassword
    implements MySQLCmd
{

    private String NewPassword;
    private String username;

    public ChangeDefaultPassword(String NewPassword,String username)
    {
        this.NewPassword = NewPassword;
        this.username = username;
    }
    

    public String execute()
    {
        Pattern p = Pattern.compile("((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%?*^&_!~]).{8,20})");
        Matcher m = p.matcher(NewPassword);
        boolean b = m.matches();
        if(!b)
        {
            int f = 0;
            System.out.println("Password not strong");
            return Integer.toString(f);
        } else
        {
            this.NewPassword = HashMD5.hashpw(this.NewPassword );
            String sqlQuery = buildQuery();
            System.out.println((new StringBuilder()).append("query is ").append(sqlQuery).toString());
            Connection connection = DAO.getConnection();
            DBQueryExecuter queryExecuter = new DBQueryExecuter();
            int result = queryExecuter.modify(sqlQuery, connection);
            DAO.closeConnection();
            return Integer.toString(result);
        }
    }

    private String buildQuery()
    {
        return (new StringBuilder()).append("Update user set flag=0,password ='").append(NewPassword).append("'where username ='").append(username).append("'").toString();
    }

    public boolean isReversible()
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void undo()
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    
}
