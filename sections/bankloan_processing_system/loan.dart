// 1. Loan (Abstract Class)
// Create an abstract class Loan with the following properties and methods:
// - borrowerName (String)
// - loanAmount (double)
// - interestRate (double)
// - Abstract method: double calculateMonthlyInstallment(int months).

abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan({
    required this.borrowerName,
    required this.loanAmount,
    required this.interestRate,
  });

  double calculateMonthlyInstallment(int months);
}
