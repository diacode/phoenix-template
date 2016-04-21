ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixTemplate.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixTemplate.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixTemplate.Repo)

