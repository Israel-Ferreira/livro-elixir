defmodule App.Customer do

  def create_customer(nil,address) when address != nil,do: {:error,"Invalid Name"}

  def create_customer(name,nil) when name != nil, do: {:error, "Invalid Address"}

  def create_customer(name,address) do
    %App.CustomerStruct{name: name, address: address }
  end

  def find_customer(list_customers,customer) do
    list_customers |> Enum.find(fn cust -> cust == customer end)
  end


  def find_by_name(list_customer,customer_name) do
    list_customer
    |> Enum.find(fn cst -> cst.name == customer_name end)
  end



end
