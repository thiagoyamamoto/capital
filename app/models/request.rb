class Request < ActiveRecord::Base
  STATUS = {:spam => 0, :company => 1, :person => 2}

	enum status: STATUS
  
  belongs_to :category

  validates :email, :phone, :message, :name, presence: true

  validates :email, email: true

  validates :guest, numericality: true

  validates :date, date: true

end
