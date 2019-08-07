defmodule App.CustomerTest do
  use ExUnit.Case

  setup do
    %{list_customers: [
      %App.CustomerStruct{name: "Israel", address: "Rua Espanha"},
      %App.CustomerStruct{name: "Matheus",address: "Rua Oriente"},
      %App.CustomerStruct{name: "Paulo",address: "Rua São Judas Tadeu"}
    ]}
  end

  test "Should be create a customer with name and address" do
    expected =  %App.CustomerStruct{name: "Israel", address: "Rua Espanha"}
    assert App.Customer.create_customer("Israel", "Rua Espanha") == expected
  end

  test "Should be find a customer in list of customers",%{list_customers: simple_list} do
    expected = %App.CustomerStruct{name: "Israel", address: "Rua Espanha"}
    assert App.Customer.find_customer(simple_list, expected) == expected
  end

  test "Shouldn't be find a customer with name Raphaela",%{list_customers: simple_list} do
    expected = %App.CustomerStruct{name: "Raphaela",address: "Rua Silvio Santos"}
    refute App.Customer.find_customer(simple_list, expected) == expected
  end

  @tag :negative
  test "Should be find a customer using name", %{list_customers: simple_list} do
    expected = %App.CustomerStruct{name: "Israel", address: "Rua Espanha"}
    assert App.Customer.find_by_name(simple_list, "Israel") == expected
  end
end
