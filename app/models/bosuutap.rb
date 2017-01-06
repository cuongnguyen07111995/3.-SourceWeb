class Bosuutap < ApplicationRecord
    belongs_to :thanhvien
    
    has_many :chitietbosuutaps

    validates :ten, presence: true
end
