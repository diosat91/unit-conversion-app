# == Schema Information
#
# Table name: conversions
#
#  id             :bigint           not null, primary key
#  dimension_id   :bigint           not null
#  source_unit_id :bigint           not null
#  target_unit_id :bigint           not null
#  factor         :decimal(, )
#  value          :decimal(, )
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Conversion < ApplicationRecord
  belongs_to :dimension
  belongs_to :source_unit, class_name: 'Unit'
  belongs_to :target_unit, class_name: 'Unit'

  validates :dimension, :source_unit, :target_unit, :factor, presence: true
  validates :value, presence: true, numericality: { greater_than: 0 }
  validate :source_unit_and_target_unit_are_different

  def convert_value
    value * factor
  end

  private

  def source_unit_and_target_unit_are_different
    if source_unit == target_unit
      errors.add(:source_unit, "and target unit must be different")
    end
  end
end
