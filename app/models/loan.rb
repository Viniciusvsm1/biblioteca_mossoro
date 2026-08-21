class Loan < ApplicationRecord
  belongs_to :book
  belongs_to :reader

  attr_accessor :reader_loan_password

  validates :reader_loan_password, presence: true, on: :create
  validate :check_book_availability, on: :create
  validate :verify_reader_password, on: :create

  before_create :calculate_due_date
  after_create :mark_book_as_borrowed

  private

  def check_book_availability
    if book && !book.available?
      errors.add(:book, "não está disponível para empréstimo")
    end
  end

  def verify_reader_password
    if reader && reader.loan_password != reader_loan_password
      errors.add(:reader_loan_password, "está incorreta")
    end
  end

  def calculate_due_date
    # Adiciona 15 dias úteis pulando sábados e domingos
    date = Date.today
    business_days = 0
    while business_days < 15
      date += 1.day
      business_days += 1 unless date.saturday? || date.sunday?
    end
    self.due_date = date
  end

  def mark_book_as_borrowed
    book.update(status: "Emprestado")
  end
end
