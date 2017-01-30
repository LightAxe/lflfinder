class Library < ApplicationRecord
  validate :name, presence: true,
            length: ( minimum: 3 )
end
