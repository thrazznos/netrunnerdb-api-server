module API
  module V3
    module Public
      class Api::V3::Public::CardPoolResource < JSONAPI::Resource
        immutable

        attributes :name, :card_cycle_ids, :card_set_ids, :card_ids, :updated_at
        key_type :string

        paginator :none

        has_one :format
        has_many :card_cycles
        has_many :card_sets
        has_many :cards
        has_many :snapshots
      end
    end
  end
end
