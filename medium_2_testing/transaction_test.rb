require 'minitest/autorun'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @transaction = Transaction.new(10)
    @transaction.amount_paid = 12
  end

  def test_prompt_for_payment
    input = StringIO.new("30\n")
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal(30, @transaction.amount_paid)
  end
end