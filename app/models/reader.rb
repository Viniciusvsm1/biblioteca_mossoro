class Reader < ApplicationRecord
  validates :name, :phone, presence: true
  validates :cpf, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  before_create :generate_loan_password

  private

  def generate_loan_password
    # Gera uma senha aleatória de 6 caracteres alfanuméricos
    self.loan_password = SecureRandom.alphanumeric(6).upcase
  end
end
