defmodule CongressionalGoblin.User do
  use CongressionalGoblin.Web, :model

  schema "users" do
    field :username, :string
    field :email, :string
    field :password, :string
    field :address, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:username, :email, :password, :address])
    |> validate_required([:username, :address])
  end
end
