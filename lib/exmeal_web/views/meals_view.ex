defmodule ExmealWeb.MealsView do
  use ExmealWeb, :view

  alias Exmeal.Meal

  def render("create.json", %{
        meal: %Meal{
          id: id,
          description: description,
          date: date,
          calories: calories
        }
      }) do
    %{
      meal: %{
        meal: %Meal{
          id: id,
          description: description,
          date: date,
          calories: calories
        }
      },
      message: "Meal created!"
    }
  end

  def render("meal.json", %{
        meal: %Meal{
          id: id,
          description: description,
          date: date,
          calories: calories
        }
      }) do
    %{
      meal: %Meal{
        id: id,
        description: description,
        date: date,
        calories: calories
      }
    }
  end
end
