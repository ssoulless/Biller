class Account < ActiveRecord::Base
	has_many :account_entries, dependent: :destroy

	validates :name, presence: true, 
					 length: {in: 1..70, message: %Q|Please enter decent name Sr.|},
					 uniqueness: true

	def update_balance!
		update_attributes(
			balance: self.account_entries.sum(:amount)
		)
	end
end
