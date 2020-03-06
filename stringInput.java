package inputtest;
import java.util.Scanner;
public class begin {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String input;
		Scanner check = new Scanner(System.in);
		System.out.println("Please enter LOGON: ");
		input = check.nextLine();
		System.out.println("Welcome, " + input + ".");
	}

}
