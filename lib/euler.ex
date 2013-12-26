defmodule Euler do
  @moduledoc """
    Used to solve Project Euler problems.

    ## Solved Problems
    Problem 1 - 12/25/2013

  """

  use Application.Behaviour

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    Euler.Supervisor.start_link
  end
end
