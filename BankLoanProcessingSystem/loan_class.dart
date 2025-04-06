
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
