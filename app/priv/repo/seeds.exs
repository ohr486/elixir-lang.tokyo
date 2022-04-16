# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ElixirLangTokyo.Repo.insert!(%ElixirLangTokyo.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ElixirLangTokyo.Repo

alchemist = Repo.insert!(%ElixirLangTokyo.Alchemist{
  name: "ohr486", github: "ohr486", twitter: "ohrdev"
})

meetup = ElixirLangTokyo.Repo.insert!(%ElixirLangTokyo.Community.Meetup{
  name: "tokyo.ex", site: "https://beam-lang.connpass.com/", hashtag: "tokyoex"
})

meetup_owner = Repo.insert!(%ElixirLangTokyo.Community.MeetupOwner{
  meetup: meetup, alchemist: alchemist
})

event = ElixirLangTokyo.Repo.insert!(%ElixirLangTokyo.Community.Event{
  meetup: meetup, name: "tokyo.ex#16", url: "https://beam-lang.connpass.com/event/240399/"
})

talk = ElixirLangTokyo.Repo.insert!(%ElixirLangTokyo.Community.Talk{
  event: event, alchemist: alchemist, title: "Plug & WAF", slide: "https://speakerdeck.com/ohr486/plug-and-waf"
})
