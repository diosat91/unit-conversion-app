# == Schema Information
#
# Table name: units
#
#  id           :bigint           not null, primary key
#  name         :string
#  abbreviation :string
#  dimension_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Unit < ApplicationRecord
  belongs_to :dimension
end
