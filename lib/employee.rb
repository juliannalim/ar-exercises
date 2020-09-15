class Validator < ActiveModel::Validator
  def validate(record)
    if record.hourly_rate <=40 || record.hourly_rate >=200
      puts record.errors[:base] << "YOU'RE CHEAP"
    end
    if annual_revenue >=0
      puts record.errors[:base] << "YOU'RE BROKE"
    end
  end
end


class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :hourly_rate, presence: true
  validates  :store, presence: true
  validates  :annual_revenue, presence: true
  validates_with Validator
end

# different between custom Validation method or Validator class