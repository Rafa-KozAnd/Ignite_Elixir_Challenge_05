defmodule ExmealWeb.MealsController do
  use ExmealWeb, :controller

  alias Plug.Conn
  alias Exmeal.Meals.{Create, Delete, Update, Get}

  action_fallback(ExmealWeb.FallbackController)

  def create(%Conn{} = conn, params) do
    with {:ok, meal} <- Create.call(params) do
      conn
      |> put_status(:created)
      |> render("create.json", meal: meal)
    end
  end

  def delete(%Conn{} = conn, %{"id" => id}) do
    with {:ok, _meal} <- Delete.call(id) do
      conn
      |> put_status(:no_content)
      |> text("")
    end
  end

  def update(%Conn{} = conn, params) do
    with {:ok, meal} <- Update.call(params) do
      conn
      |> put_status(:ok)
      |> render("meal.json", meal: meal)
    end
  end

  def show(%Conn{} = conn, %{"id" => id}) do
    with {:ok, meal} <- Get.by_id(id) do
      conn
      |> put_status(:ok)
      |> render("meal.json", meal: meal)
    end
  end
end
