defmodule Exmeal.Meals.Get do
  alias Exmeal.{Error, Meal, Repo}

  def by_id(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, %Error{result: "Meal not found", status: :not_found}}
      meal -> {:ok, meal}
    end
  end
end
