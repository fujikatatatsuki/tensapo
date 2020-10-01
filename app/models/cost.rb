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

  # 半角数字のみ入力可能
  with_options format: { with: /\A[0-9]+\z/, message: '半角数字で入力してください' } do
  validates :
  t.integer :health_insurance_premium_price
  t.integer :pension_price
  t.integer :resident_tax_price
  t.integer :income_tax_price
  t.integer :other_taxes
  t.integer :food_cost
  t.integer :expendables_cost
  t.integer :medical_cost
  t.integer :other_life_costs
  t.integer :moving_cost
  t.integer :rent
  t.integer :security_deposit
  t.integer :key_money
  t.integer :administrative_fee
  t.integer :other_moves
  t.integer :electricity_charges
  t.integer :gas_charges
  t.integer :water_charges
  t.integer :other_utility_costs
  t.integer :loan_monthly_payment
  t.integer :parking_cost
  t.integer :water_cost
  t.integer :fuel_cost
  t.integer :vehicle_inspection_fee
  t.integer :car_tax
  t.integer :other_cars
  t.integer :traffic＿cost
  t.integer :phone＿cost
  t.integer :other_communication_costs
  t.integer :scholarship
  t.integer :debt
  t.integer :other_monthly_payment
  t.integer :admission_cost
  t.integer :monthly_tuition
  t.integer :other_tuitions
end
