// 2. PersonalLoan (Subclass of Loan)
// Fixed 10% interest rate for Personal Loan.
import 'dart:math';  // إضافة مكتبة الرياضيات
import 'loan.dart';

class PersonalLoan extends Loan {
  PersonalLoan({
    required String borrowerName,
    required double loanAmount,
  }) : super(borrowerName: borrowerName, loanAmount: loanAmount, interestRate: 10);

  @override
  double calculateMonthlyInstallment(int months) {
    // تحويل الفائدة الشهرية
    double monthlyInterestRate = interestRate / 100 / 12;
    
    // حساب القسط الشهري باستخدام المعادلة
    double monthlyInstallment = loanAmount * monthlyInterestRate / 
        (1 - pow(1 + monthlyInterestRate, -months));  // تأكد من استخدام pow بشكل صحيح
    
    return monthlyInstallment;
  }
}
