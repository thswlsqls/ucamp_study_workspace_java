import java.util.Scanner;

public class JavaMission_01_02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		char c = ' ';
		Scanner sc = new Scanner(System.in);
		System.out.println("A B C �� ������ �Է����ּ���.");
		c = sc.next().charAt(0);
		switch (c) {
			case 'A': System.out.println("A�� ��� �� ������ �����մϴ�."); break;
			case 'B': System.out.println("B�� �� ������ �����մϴ�."); break;
			case 'C': System.out.println("C�� ������ �����մϴ�."); break;
			default : System.out.println("��ȿ���� ���� �����Դϴ�.");
		}
		
	}

}