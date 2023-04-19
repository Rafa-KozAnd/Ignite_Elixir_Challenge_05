defmodule Exmeal.Meals.Update do
  alias Exmeal.{Meal, Meals, Repo}
  alias Meals.Get

  def call(%{"id" => id} = params) do
    with {:ok, meal} <- Get.by_id(id) do
      meal
      |> Meal.changeset(params)
      |> Repo.update()
    end
  end
end
