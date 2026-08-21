class Book < ApplicationRecord
  belongs_to :category

  validates :title, :author, presence: true

  before_create :set_default_status

  def available?
    status == "Disponível"
  end

  private

  def set_default_status
    self.status ||= "Disponível"
  end
end
