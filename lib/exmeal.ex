defmodule Exmeal do
  alias Exmeal.Meals.Create, as: CreateMeal
  alias Exmeal.Meals.Delete, as: DeleteMeal
  alias Exmeal.Meals.Get, as: GetMeal
  alias Exmeal.Meals.Update, as: UpdateMeal

  defdelegate create_meal(params), to: CreateMeal, as: :call
  defdelegate delete_meal(params), to: DeleteMeal, as: :call
  defdelegate get_meal_by_id(params), to: GetMeal, as: :by_id
  defdelegate update_meal(params), to: UpdateMeal, as: :call
end
