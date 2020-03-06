package inputtest;
import java.util.Scanner;
public class begin {

	public static void main(String[] args) {
		
		String input;
		Scanner check = new Scanner(System.in);
		System.out.println("Please enter LOGON: ");
		input = check.nextLine();
		System.out.println("Welcome, " + input + ".");
	}

}
