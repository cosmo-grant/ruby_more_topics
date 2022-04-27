require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(0)
    @transaction = Transaction.new(10)
    @transaction.amount_paid = 12
  end

  def test_accept_money
    @register.accept_money(@transaction)
    assert_equal(12, @register.total_money)
  end

  def test_change
    assert_equal(2, @register.change(@transaction))
  end

  def test_give_receipt
    assert_output("You've paid $10.\n") { @register.give_receipt(@transaction) }
  end
end