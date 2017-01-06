class Diachi < ApplicationRecord
    belongs_to :thanhvien

    validate :sonha, presence: true
    validate :duong, presence: true
    validate :phuong, presence: true
    validate :quan, presence: true
    validate :thanhpho, presence: true
end
