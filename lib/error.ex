defmodule Exmeal.Error do
  @enforce_keys [:result, :status]

  defstruct @enforce_keys
end
