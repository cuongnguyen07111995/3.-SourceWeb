# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170106053522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "binhluans", force: :cascade do |t|
    t.text     "noidung"
    t.integer  "danhgia"
    t.integer  "luotthich"
    t.integer  "monan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monan_id"], name: "index_binhluans_on_monan_id", using: :btree
  end

  create_table "bosuutaps", force: :cascade do |t|
    t.string   "ten"
    t.string   "mieuta"
    t.integer  "thanhvien_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["thanhvien_id"], name: "index_bosuutaps_on_thanhvien_id", using: :btree
  end

  create_table "chitietbosuutaps", force: :cascade do |t|
    t.integer  "bosuutap_id"
    t.integer  "monan_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["bosuutap_id"], name: "index_chitietbosuutaps_on_bosuutap_id", using: :btree
    t.index ["monan_id"], name: "index_chitietbosuutaps_on_monan_id", using: :btree
  end

  create_table "chitietgiohangs", force: :cascade do |t|
    t.integer  "soluong"
    t.integer  "giohang_id"
    t.integer  "monan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["giohang_id"], name: "index_chitietgiohangs_on_giohang_id", using: :btree
    t.index ["monan_id"], name: "index_chitietgiohangs_on_monan_id", using: :btree
  end

  create_table "chitiets", force: :cascade do |t|
    t.string   "tenmonan"
    t.integer  "soluong"
    t.decimal  "dongia"
    t.decimal  "tongtien"
    t.integer  "dongiaohang_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["dongiaohang_id"], name: "index_chitiets_on_dongiaohang_id", using: :btree
  end

  create_table "diachis", force: :cascade do |t|
    t.string   "sonha"
    t.string   "duong"
    t.string   "phuong"
    t.string   "quan"
    t.string   "thanhpho"
    t.integer  "thanhvien_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["thanhvien_id"], name: "index_diachis_on_thanhvien_id", using: :btree
  end

  create_table "dondathangs", force: :cascade do |t|
    t.decimal  "tongtien"
    t.boolean  "dathanhtoan",        default: false
    t.string   "hinhthuc_thanhtoan"
    t.boolean  "dagiaohang",         default: false
    t.string   "hoten"
    t.string   "diachi"
    t.string   "sdt"
    t.integer  "thanhvien_id"
    t.integer  "diachi_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["diachi_id"], name: "index_dondathangs_on_diachi_id", using: :btree
    t.index ["thanhvien_id"], name: "index_dondathangs_on_thanhvien_id", using: :btree
  end

  create_table "dongiaohangs", force: :cascade do |t|
    t.decimal  "tongtien"
    t.decimal  "phivanchuyen",  default: "0.0"
    t.decimal  "phikhac",       default: "0.0"
    t.datetime "ngaygiao"
    t.datetime "ngaythanhtoan"
    t.string   "hoten"
    t.string   "diachi"
    t.string   "sdt"
    t.integer  "dondathang_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["dondathang_id"], name: "index_dongiaohangs_on_dondathang_id", using: :btree
  end

  create_table "giohangs", force: :cascade do |t|
    t.decimal  "tongtien"
    t.decimal  "phivanchuyen", default: "0.0"
    t.decimal  "phikhac",      default: "0.0"
    t.integer  "thanhvien_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["thanhvien_id"], name: "index_giohangs_on_thanhvien_id", using: :btree
  end

  create_table "loaimonans", force: :cascade do |t|
    t.integer  "loai_id"
    t.integer  "monan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loai_id"], name: "index_loaimonans_on_loai_id", using: :btree
    t.index ["monan_id"], name: "index_loaimonans_on_monan_id", using: :btree
  end

  create_table "loais", force: :cascade do |t|
    t.string   "ten"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.integer  "thanhvien_id"
    t.integer  "monan_id"
    t.integer  "thanhvien_2_id"
    t.string   "hanhdong"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "monans", force: :cascade do |t|
    t.string   "ten"
    t.decimal  "gia"
    t.text     "mieuta"
    t.string   "anh"
    t.integer  "luotthich",    default: 0
    t.integer  "luotxem",      default: 0
    t.integer  "thanhvien_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["thanhvien_id"], name: "index_monans_on_thanhvien_id", using: :btree
  end

  create_table "thanhviens", force: :cascade do |t|
    t.string   "hoten"
    t.string   "password_digest"
    t.string   "gioitinh"
    t.date     "ngaysinh"
    t.string   "sdt"
    t.string   "email"
    t.integer  "role",            default: 2
    t.integer  "luotxem",         default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_foreign_key "binhluans", "monans"
  add_foreign_key "bosuutaps", "thanhviens"
  add_foreign_key "chitietbosuutaps", "bosuutaps"
  add_foreign_key "chitietbosuutaps", "monans"
  add_foreign_key "chitietgiohangs", "giohangs"
  add_foreign_key "chitietgiohangs", "monans"
  add_foreign_key "chitiets", "dongiaohangs"
  add_foreign_key "diachis", "thanhviens"
  add_foreign_key "dondathangs", "diachis"
  add_foreign_key "dondathangs", "thanhviens"
  add_foreign_key "dongiaohangs", "dondathangs"
  add_foreign_key "giohangs", "thanhviens"
  add_foreign_key "loaimonans", "loais"
  add_foreign_key "loaimonans", "monans"
  add_foreign_key "monans", "thanhviens"
end
