defmodule CongressionalGoblin.UserTest do
  use CongressionalGoblin.ModelCase

  alias CongressionalGoblin.User

  @valid_attrs %{address: "some content", email: "some content", password: "some content", username: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
