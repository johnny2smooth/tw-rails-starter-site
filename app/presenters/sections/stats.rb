module Sections
  class Stats < Section
    # Matches _stats locals:
    #   stats: [{ label:, value: }]
    def self.for(_page, overrides = {})
      new(defaults.deep_merge(overrides))
    end

    def self.defaults
      {
        stats: [
          { label: "Transactions every 24 hours", value: "44 million" },
          { label: "Assets under holding",        value: "$119 trillion" },
          { label: "New users annually",          value: "46,000" }
        ]
      }
    end
  end
end
