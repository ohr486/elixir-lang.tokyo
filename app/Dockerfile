FROM ohr486/elixir:1.13-erl-24.3-node-18.x-rust-1.60-aarch64

WORKDIR /app

RUN mix do \
      local.hex --force, \
      local.rebar --force, \
      archive.install --force hex phx_new

