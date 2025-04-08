import 'LoanSubclasses.dart';
import 'loan_class.dart';

class LoanProcessingSystem {
  List<Loan> loans = [];
  void applyLoan(Loan loan) {
    loans.add(loan);
  }

  void calculateTotalInterest(int months) {
    double totalInterest = 0;
    for (Loan loan in loans) {
      totalInterest += loan.calculateMonthlyInstallment(months) * months;
    }
    print('Total interest for $months months: $totalInterest');
    
  }
}

void main() {
  LoanProcessingSystem loanSystem = LoanProcessingSystem();
  loanSystem.applyLoan(PersonalLoan('John Doe', 10000));
  loanSystem.applyLoan(HomeLoan('ABC Corp', 50000));
  loanSystem.calculateTotalInterest(12);
  

  
}
