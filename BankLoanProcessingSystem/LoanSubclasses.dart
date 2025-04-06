import 'loan_class.dart';

class PersonalLoan extends Loan {
  PersonalLoan(String borrowerName, double loanAmount)
      : super(
            borrowerName: borrowerName,
            loanAmount: loanAmount,
            interestRate: 0.10);

  @override
  double calculateMonthlyInstallment(int months) {
   return (loanAmount * (interestRate / 12)) / months;

  }
}

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount)
      : super(
            borrowerName: borrowerName,
            loanAmount: loanAmount,
            interestRate: 0.08);

  @override
  double calculateMonthlyInstallment(int months) {
    if (loanAmount > 500000) {
      interestRate = 0.9;
    }
    return (loanAmount * (interestRate / 12)) / months;

  }
}

class CarLoan extends Loan {
  CarLoan(String borrowerName, double loanAmount)
      : super(
            borrowerName: borrowerName,
            loanAmount: loanAmount,
            interestRate: 0.07);

  @override
  double calculateMonthlyInstallment(int months) {
    double totalAmount = loanAmount;
    if (loanAmount > 50.000) {
      totalAmount = loanAmount * 0.2;
    }
   return (totalAmount * (interestRate / 12)) / months;

  }
}

