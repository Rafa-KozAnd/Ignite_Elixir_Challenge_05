defmodule Exmeal.Meal do
  use Ecto.Schema

  import Ecto.Changeset

  @required_params [:description, :date, :calories]

  @primary_key {:id, :binary_id, autogenerate: true}

  @derive({Jason.Encoder, only: [:id, :description, :calories, :date]})

  schema "meals" do
    field(:description, :string)
    field(:date, :date)
    field(:calories, :integer)

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
  end
end
