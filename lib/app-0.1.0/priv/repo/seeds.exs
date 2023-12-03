# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     App.Repo.insert!(%App.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias App.Accounts

Accounts.register_user(
  %{
    "username" => "dev",
    "first_name" => "James",
    "last_name" => "Njovu",
    "type" => 1,
    "email" => "njovujames@gmail.com",
    "password" => "Dev@1234",
  }
)
Accounts.register_user(
  %{
    "username" => "danny",
    "first_name" => "Danny",
    "type" => 1,
    "last_name" => "Mwikisa",
    "email" => "dannymwikisa@gmail.com",
    "password" => "Dan@2299",
  }
)
