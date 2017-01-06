class Monan < ApplicationRecord
    belongs_to :thanhvien

    validate :ten, presence: true
    validate :gia, presence: true
    validate :anh, presence: true
    validate :mieuta, presence: true, , length: { minimum: 50 }
end
