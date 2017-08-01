defmodule Authable.RepoBase do
  @moduledoc """
  This module allows accessing defined repo models on init.
  """

  defmacro __using__(_) do
    quote do
      alias Authable.Model.{User, Token, Client, App}

      @resource_owner User
      @token_store Token
      @client Client
      @app App
    end
  end
end
