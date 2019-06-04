# Bank Tech Test

Tech test practice given to us in Week 10 of Makers Academy, specifically to practice producing the best code I can when there is some time pressure. I would like to practice my OO design and TDD skills.

I worked alone on this task.

## Approach
1. The first thing I did was create User Stories (detailed below).
2. I then planned out the task. My initial thinking was to have two classes - an *account class*, responsible for handling the account transactions, and a *statement class*, responsible for displaying the statement in the format required for the acceptance criteria. My reasoning was in order to follow the single responsibility principle and make sure my code was well-crafted.
3. I wrote my first (failing) feature test and made it pass.
4. Initially I considered using a gem for the table but I thought that might be more difficult to properly feature test, and I wondered if that were even specifically necessary. It turns out it wasn't necessary - I don't need to over think!
5. I also considered manually entering the date of the transaction, as the fact that this data is kept in memory and not a database means that all the transactions happen in one day when testing. However, I thought that it was more realistic and usable to have the date of the transaction automatically as today's date, which is more efficient and functional from a user's perspective. 

## How to use this program
1. Clone this repo
2. Run `bundle install`
3. This program runs from the command line, as follows:

```
irb
2.6.0 :001 > require './lib/account'
 => true
2.6.0 :002 > account = Account.new
 => #<Account:0x00007ff159972de8 @balance=0.0, @credit="", @debit="", @date="04/06/2019", @transaction=[], @statement=#<Statement:0x00007ff159972b40 @display=[]>>
2.6.0 :003 > account.deposit(10.00)
 => "10.00 deposited"
2.6.0 :004 > account.complete_transaction
 => "Transaction complete"
2.6.0 :005 > account.withdraw(15.00)
 => "You do not have enough money"
2.6.0 :006 > account.withdraw(5.00)
 => "5.00 withdrawn"
2.6.0 :007 > account.complete_transaction
 => "Transaction complete"
2.6.0 :008 > account.statement.format
date || credit || debit || balance
 => "04/06/2019 || 10.00 ||  || 10.00 || 04/06/2019 ||  || 5.00 || 5.00"
2.6.0 :009 >
```

# User Stories

```
As a shopaholic
So that I can save money for my next shopping spree
I would like to be able to deposit money in my bank.

As a shopaholic
So that I can spend until my heart is content
I would like to withdraw money from my bank.

As a shopaholic
So that I can keep track of my spending and make sure I can still afford rent
I would like to check my account balance.

As a shopaholic
So that I don't go into debt
I would like to be prevented from withdrawing money I don't have.
```

## Specification (given to me by Makers Academy)
### Requirements
* You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).
### Acceptance criteria:
- Given a client makes a deposit of 1000 on 10-01-2012
- And a deposit of 2000 on 13-01-2012
- And a withdrawal of 500 on 14-01-2012
- When she prints her bank statement
- Then she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Acknowledgments
- Jordan Roberts
- Makers Academy Challenge
