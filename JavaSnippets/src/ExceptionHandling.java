
public class ExceptionHandling {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 System.out.println("This statement will be executed"); 
		 
	        Object o = new Object();
	 
	        try
	        {
	            ExceptionHandling e = (ExceptionHandling) o;   //This statement throws ClassCastException
	        }
	        catch (Exception e)
	        {
	            System.out.println("Exception Caught");
	        }
	 
	        System.out.println("Now, This statement will also be executed");
	}

}
