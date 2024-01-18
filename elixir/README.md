# com.bigbookapi.client

Big Book API lets you semantically search over 4 million English books by text, genre, author, ISBN, and more. You can also find books that are similar to each other.

### Building

To install the required dependencies and to build the elixir project, run:
```
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `com/bigbookapi/client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:com/bigbookapi/client, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/com/bigbookapi/client](https://hexdocs.pm/com/bigbookapi/client).
