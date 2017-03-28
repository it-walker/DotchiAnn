module DotchiAnnCompare extend ActiveSupport::Concern

    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def self.compare()
        p "テスト"
    end
end