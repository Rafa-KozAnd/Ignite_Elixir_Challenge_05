defmodule Exmeal.Meals.Create do
  alias Exmeal.{Meal, Repo, Error}

  def call(params) do
    Meal.changeset(params)
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Meal{} = meal}), do: {:ok, meal}

  defp handle_insert({:error, changeset}) do
    {:error, %Error{result: changeset, status: :bad_request}}
  end
end
