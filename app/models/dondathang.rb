class Dondathang < ApplicationRecord
    belongs_to :thanhvien
    belongs_to :diachi

    has_many :dongiaohangs

    validates :tongtien, presence: true
    validates :hoten, presence: true
    validates :diachi, presence: true
    validates :sdt, presence: true
end
