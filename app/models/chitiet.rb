class Chitiet < ApplicationRecord
    belongs_to :dongiaohang

    validates :soluong, presence: true
    validates :tenmonan, presence: true
    validates :dongia, presence: true
    validates :tongtien, presence: true
end
