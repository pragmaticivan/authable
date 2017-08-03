defmodule Authable.Rollbackable do
  @moduledoc """
  This module allows auto DB rollback on each test block execution.
  """

  use ExUnit.CaseTemplate
  import Authable.Config, only: [repo: 0]

  using do
    quote do
    end
  end

  setup do
    # Wrap this case in a transaction
    Ecto.Adapters.SQL.Sandbox.mode(repo(), :manual)
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(repo())

    # Roll it back once we are done
    on_exit fn ->
      Ecto.Adapters.SQL.Sandbox.mode(repo(), {:shared, self()})
    end

    :ok
  end
end
