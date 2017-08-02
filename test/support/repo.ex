defmodule Authable.Repo do
  @moduledoc """
  Authable Repo
  """

  use Ecto.Repo, otp_app: :authable

  @dialyzer {:nowarn_function, rollback: 1}
end
