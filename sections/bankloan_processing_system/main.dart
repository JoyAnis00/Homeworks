import 'loan_processing_system.dart';

import 'home_loan.dart';
import 'car_loan.dart';
import 'peron_loan.dart';

void main() {
  var loanProcessingSystem = LoanProcessingSystem();

  var personalLoan = PersonalLoan(borrowerName: 'John Doe', loanAmount: 10000);
  var homeLoan = HomeLoan(borrowerName: 'Jane Smith', loanAmount: 600000);
  var carLoan = CarLoan(borrowerName: 'Alice Johnson', loanAmount: 70000);

  loanProcessingSystem.applyLoan(personalLoan);
  loanProcessingSystem.applyLoan(homeLoan);
  loanProcessingSystem.applyLoan(carLoan);

  loanProcessingSystem.calculateInstallments(12);  // Calculating for 12 months
}
