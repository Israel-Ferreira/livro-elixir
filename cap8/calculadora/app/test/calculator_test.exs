defmodule App.CalculatorTest do
  use ExUnit.Case;

  setup do
    {:ok, meu_mult: 2, mm: 6}
  end

  test "should return 4 when multiply 2 by 2",%{meu_mult: valor} do
    assert App.Calculator.multiply(valor,2)	==	4
  end

  test "should return 6 when multiply 3 by 2", %{mm: valor} do
    assert App.Calculator.multiply(3,2) == valor
  end

  test "should return nil when multiply 2 by nil" do
    assert App.Calculator.multiply(2,nil) == nil
  end

  test "Should return nil when multiply nil by 2" do
    assert App.Calculator.multiply(nil,2) == nil
  end

  test "Shouldn't return 10 when multiply 4 by 2" do
    refute App.Calculator.multiply(4,2) == 10, "It's a serious error"
  end


end
