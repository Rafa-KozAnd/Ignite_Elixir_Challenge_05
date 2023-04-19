defmodule Exmeal.Meals.Delete do
  alias Exmeal.Meals.Get
  alias Exmeal.Repo

  def call(id) do
    with {:ok, meal} <- Get.by_id(id) do
      Repo.delete(meal)
    end
  end
end
