package edu.uta.tsrh.db.commandpattern;

public interface MySQLCmd
{
    Object execute();
    
    boolean isReversible();
    
    void undo();
    
}
