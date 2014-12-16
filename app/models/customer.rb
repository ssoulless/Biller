class Customer < Account
	has_many :time_entries
	#scope :premier, -> { where("employees > ?", 1)}
	scope :newest, -> { order("created_at DESC") }
	scope :starts_with, -> (letter) { where("name LIKE ?", letter + "%") }
end
