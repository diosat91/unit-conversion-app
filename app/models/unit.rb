# == Schema Information
#
# Table name: units
#
#  id           :integer          not null, primary key
#  name         :string
#  abbreviation :string
#  dimension_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Unit < ApplicationRecord
  belongs_to :dimension
end
