class Project < ApplicationRecord

	has_many :tasks, dependent: :destroy
	validates :title,:text, presence: true,
                    length: { minimum: 5 }
	validates :sdate,:edate, presence: true
	validate :date_validation


	private 
	def date_validation
		   if edate && sdate
      errors.add(:end_date, "can't be less than Start date") if edate < sdate
    end
  end
end

