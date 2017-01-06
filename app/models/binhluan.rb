class Binhluan < ApplicationRecord
    belongs_to :monan
    belongs_to :thanhvien

    validates :noidung, presence: true, length: { minimum: 20 }
end
