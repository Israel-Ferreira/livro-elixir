defmodule Calculator do
  @moduledoc """
  Define a Calculator module and functions to execute it
  """

  @doc """
  Start the system to process
  """
  def start() do
    ciro = %Student{ name: "Ciro Vicente", results: build_subjects([5.3,10,7.8,7.2])}
    matheus= %Student{ name: "Matheus Costa", results: build_subjects([10,8.3,10])}
    juarez =  %Student{ name: "Juarez Neto", results: build_subjects([8.3,9.2,5.4,9])}
    beatriz = %Student{ name: "Beatriz Candido", results: build_subjects([10,9.2,4.6,9])}

    result = calculate([ciro,matheus,juarez,beatriz])
    best = best_result(result)

    {result,best}
  end

  defp calculate(students) do
    students
    |> Enum.map(&(
      %{
        first_name: Student.first_name(&1),
        last_name: Student.last_name(&1),
        average: average(&1)
      }
    ))
  end

  defp average(student) do
    total = Enum.count(student.results)

    result =  student.results
    |> Enum.map(&(&1.result))
    |> Enum.reduce(&(&1 + &2))

    Float.ceil(result / total,2)
  end

  defp best_result(students) do
    best = students
    |> Enum.map(&(&1.average))
    |> Enum.max

    students |> Enum.filter(&(&1.average == best))
  end

  defp build_subjects(results) do
    subjects = ["Lab. Banco de Dados","Engenharia de Software","Lab. Programação Java","UX"]
    subjects
    |> Enum.map(&(%Subject{name: &1, result: Enum.random(results)}))
  end
end
