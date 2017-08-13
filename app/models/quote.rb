class Quote < ApplicationRecord
  validates :quote, presence: true, length: { minimum: 1}
  validates :name, presence: true, length: { minimum: 1}
end
