class Entry < ApplicationRecord
  # 基準日の前後 7 日間の予約データを取得するスコープ
  scope :least_entries,->(base_date) {
    where("reserved_date >= ? and reserved_date <= ?",
          base_date.to_date - 7.days, base_date.to_date + 7.days )
  } 
end
