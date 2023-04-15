# == Schema Information
#
# Table name: conversions
#
#  id             :integer          not null, primary key
#  dimension_id   :integer          not null
#  source_unit_id :integer          not null
#  target_unit_id :integer          not null
#  factor         :decimal(, )
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Conversion < ApplicationRecord
  belongs_to :dimension
  belongs_to :source_unit, class_name: 'Unit'
  belongs_to :target_unit, class_name: 'Unit'
end
