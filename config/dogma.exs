use Mix.Config

# Configure linting settings
config :dogma,
  rule_set: Dogma.RuleSet.All,
  exclude: [
    ~r(\Aconfig/),
    ~r(\Alib/\w+/endpoint.ex)
  ],
  override: %{
    MatchInCondition => false,
    LineLength => [max_length: 85]
  }
