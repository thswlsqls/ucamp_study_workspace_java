

import java.util.Scanner;

/**
 * �䱸���� input/output
 * �� �ʿ��� ���� �ڵ��, Ű���� �Է��� �ʼ��� �ƴ�
 * Test(Yes, Error)
 * @author thswl
 *
 */

// �� ���� �Է¹޾Ƽ� �տ� ���ڸ� ���� ���ڷ� ���� ����� Ȯ��
public class TypeTest {

	public static void main(String[] args) {
//		int inputNumber1 = Integer.MAX_VALUE; // 011..11
//		int inputNumber2 = 20; 
		
		int num1, num2 = 0;
		Scanner sc = new Scanner(System.in);
		num1 = sc.nextInt();
		num2 = sc.nextInt();
		
		// ������ �����ʹ� ������ ��, ��ū ������ ������ Ÿ������ ����ȯ�� 
//		long sum = inputNumber1 + inputNumber2;
		float result = num1/num2;
		
//		System.out.println("���� : " + sum);
		System.out.println("������ ��� : " + result);

	}
}