class Cost < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :health_insurance_premium
  belongs_to_active_hash :pension
  belongs_to_active_hash :resident_tax
  belongs_to_active_hash :income_tax
  belongs_to_active_hash :whether_to_move
  belongs_to_active_hash :payment_of_utility_bills
  belongs_to_active_hash :car_ownership
  belongs_to_active_hash :necessity_of_attending_school

  # 共通で、選択が「---」の時は保存できないようにする
  with_options numericality: { other_than: 1 } do
    validates :health_insurance_premium_id
    validates :pension_id
    validates :resident_tax_id
    validates :income_tax_id
    validates :whether_to_move_id
    validates :payment_of_utility_bills_id
    validates :car_ownership_id_id
    validates :necessity_of_attending_school_id
  end
end
