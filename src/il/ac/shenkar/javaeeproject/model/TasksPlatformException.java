package il.ac.shenkar.javaeeproject.model;

/**
 * TasksPlatformException Handles Tasks errors  
 */
public class TasksPlatformException extends Exception{

	private static final long serialVersionUID = 1L;
	
	/**
	 * constructor
	 * @param msg
	 */
	public TasksPlatformException(String msg) {
		super(msg);
	}
	
	/**
	 * constructor
	 * @param msg
	 * @param throwable
	 */
	public TasksPlatformException(String msg, Throwable throwable) {
		super(msg,throwable);
	}
}
