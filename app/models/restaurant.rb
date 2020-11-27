class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, :address, presence: true
  validates :category, presence: true, if: :valid_category?

  private

  def valid_category?
    categories = ["chinese", "italian", "japanese", "french", "belgian"]
    categories.include? :category
  end
end
