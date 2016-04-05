use Mix.Config
alias Dogma.Rule

# Configure linting settings
config :dogma,
  rule_set: Dogma.RuleSet.All,
  exclude: [
    ~r(\Aconfig/),
    ~r(\Alib/\w+/endpoint.ex),
    ~r(node_modules/)
  ],
  override: [
    %Rule.CommentFormat{enabled: false},
    %Rule.MatchInCondition{enabled: false},
    %Rule.LineLength{enabled: true, max_length: 120},
  ]
