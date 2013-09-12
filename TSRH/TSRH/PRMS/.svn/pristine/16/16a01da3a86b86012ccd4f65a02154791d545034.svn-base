package model;

import java.util.Vector;

public class Observable {
	protected Vector<Observer> observers;

	public Observable() {
	        observers = new Vector<Observer>();
	    }
	
	
	public void addObservers(Observer obServer) {
        observers.add(obServer);
		
    }
	
	public void romoveObservers(Observer obServer) {
	        observers.remove(obServer);
	    }
	
	public void notifyObservers() {
		
		Object[] arrays = null;
				synchronized (this) {
		            arrays = observers.toArray();
		        }

		for (Object obServer : arrays) {
				((Observer) obServer).update(this);
			}


		
	}


}
