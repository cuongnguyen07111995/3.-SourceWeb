class Dongiaohang < ApplicationRecord
    belongs_to :dondathang

    has_many :chitiets

    validates :tongtien, presence: true
    validates :hoten, presence: true
    validates :diachi, presence: true
    validates :sdt, presence: true
end
