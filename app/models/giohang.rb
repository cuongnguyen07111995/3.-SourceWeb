class Giohang < ApplicationRecord
    belongs_to :thanhvien

    has_many :chitietgiohangs
end
