package edu.uta.tsrh.RoleManagement.Helper;

import java.util.Random;

/**
 * This class contains the method to create random passwords of string of a
 * minimum length 6 characters.
 * 
 * @author Shwetha Narayan
 * 
 */
public class RandomPasswordHelper {
	// Minimum password length
	public static final int MIN_LENGTH = 6;
	// The printable character set
	static final char[] printableChar = { 'a', 'b', 'c', 'd', 'e', 'f',
			'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's',
			't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F',
			'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
			'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '2', '3', '4', '5', '6', '7',
			'8', '9', '1', '+', '-', '@', };

	/**5
	 * This method creates a random password from the set of given characters.
	 * 
	 * @return String randomPassword which is the new randomly generated
	 *         password.
	 */
	public static String createRandomPassword() {

		Random random = new Random();
		StringBuilder randomPassword = new StringBuilder();

		// Iterate the set of printable characters to get a password of minimum
		// length given by the class level variable.
		for (int i = 0; i < MIN_LENGTH; i++) {
			randomPassword.append(printableChar[random
					.nextInt(printableChar.length)]);
		}

		return randomPassword.toString();
	}

}
