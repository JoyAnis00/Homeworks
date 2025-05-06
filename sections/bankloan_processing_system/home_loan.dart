// 3. HomeLoan (Subclass of Loan)
// Base 8% interest rate, increases to 9.5% if loanAmount > 500,000.
import 'dart:math'; // إضافة مكتبة الرياضيات
import 'loan.dart'; // استيراد الكلاس Loan

class HomeLoan extends Loan {
  // constructor لتحديد المقترض ومبلغ القرض
  HomeLoan({
    required String borrowerName,
    required double loanAmount,
  }) : super(borrowerName: borrowerName, loanAmount: loanAmount, interestRate: loanAmount > 500000 ? 9.5 : 8);

  @override
  double calculateMonthlyInstallment(int months) {
    // حساب الفائدة الشهرية
    double monthlyInterestRate = interestRate / 100 / 12;
    
    // حساب القسط الشهري باستخدام المعادلة
    double monthlyInstallment = loanAmount * monthlyInterestRate / 
        (1 - pow(1 + monthlyInterestRate, -months).toDouble());  // تأكد من تحويل الناتج إلى double
    
    return monthlyInstallment;
  }
}
