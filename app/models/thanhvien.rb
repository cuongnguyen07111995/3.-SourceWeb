class Thanhvien < ApplicationRecord
    has_many :monan, dependent: :destroy
    has_many :dondathangs
    has_many :dongiaohangs
    has_many :bosuutaps
    has_many :binhluans
    has_many :diachis
    
    validates :hoten, presence: true
    validates :email, presence: true
    validates :sdt, presence: true
    validates :password, presence: true, length: { minimum: 6 }
    has_secure_password
end
