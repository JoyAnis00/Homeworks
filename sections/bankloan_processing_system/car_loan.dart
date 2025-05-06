import 'dart:math';  // إضافة مكتبة الرياضيات
import 'loan.dart';   // استيراد الكلاس Loan

class CarLoan extends Loan {
  CarLoan({
    required String borrowerName,
    required double loanAmount,
  }) : super(borrowerName: borrowerName, loanAmount: loanAmount, interestRate: 7);

  @override
  double calculateMonthlyInstallment(int months) {
    // حساب المبلغ النهائي للقرض بعد إضافة رسوم المعالجة
    double finalLoanAmount = loanAmount;
    if (loanAmount > 50000) {
      finalLoanAmount += loanAmount * 0.02; // إضافة 2% رسوم معالجة إذا كان القرض أكبر من 50,000
    }

    // حساب الفائدة الشهرية
    double monthlyInterestRate = interestRate / 100 / 12;
    
    // حساب القسط الشهري باستخدام المعادلة
    double monthlyInstallment = finalLoanAmount * monthlyInterestRate / 
        (1 - pow(1 + monthlyInterestRate, -months).toDouble());  // تأكد من تحويل الناتج إلى double
    
    return monthlyInstallment;
  }
}
