defmodule Student do
  @moduledoc """
  Define a Student struct and functions to handle a student
  """
  defstruct name: nil, results: []

  @doc """
  Get the first name of a student
  ## Parameters
  - `student` - A Student struct

  ##  Examples
  * israel = %Student{name:"Israel Souza"}
  * Student.first_name(israel)
  * "Israel"
  """
  def first_name(student) do
    student.name
    |> String.split
    |> List.first
  end


  @doc """
  Get the last name of student
  ## Parameters
  - `student` - A Student struct

  ## Examples
  * israel =  %Student{name:"Israel Souza"}
  * Student.last_name(israel)
  * "Souza"
  """

  def last_name(student) do
    student.name
    |> String.split
    |> List.last
  end

end
