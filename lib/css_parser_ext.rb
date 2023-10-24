# typed: strict
# frozen_string_literal: true

require "css_parser"

module CssParser
  class << self
    module Extension
      extend T::Sig

      sig do
        params(rule_sets: T.any(RuleSet, T::Array[RuleSet])).returns(RuleSet)
      end
      def merge(*rule_sets)
        rule_sets = rule_sets.flatten.map do |rule_set|
          RuleSet.new(nil, rule_set.declarations_to_s, rule_set.specificity)
        end
        super(rule_sets)
      end
    end

    prepend Extension
  end
end
