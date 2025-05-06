// 5. LoanProcessingSystem (Main class to handle loan operations)
// Stores a list of loans and provides methods to apply and calculate installments for loans.

import 'loan.dart';

class LoanProcessingSystem {
  List<Loan> loans = [];

  void applyLoan(Loan loan) {
    loans.add(loan);
  }

  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
        '${loan.borrowerName}\'s monthly installment is: \$${installment.toStringAsFixed(2)}',
      );
    }
  }
}
