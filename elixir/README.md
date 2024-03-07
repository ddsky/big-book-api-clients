# BigBookAPI

Big Book API lets you semantically search over 4 million English books by text, genre, author, ISBN, and more. You can also find books that are similar to each other.

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `bigbookapi` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:bigbookapi, "~> 1.0"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/bigbookapi][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :bigbookapi, base_url: "https://api.bigbookapi.com"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`BigBookAPI.Connection.new/1`:

```elixir
client = BigBookAPI.Connection.new(base_url: "https://api.bigbookapi.com")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/bigbookapi
