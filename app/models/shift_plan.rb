class ShiftPlan < ApplicationRecord
  has_many :planned_roles, dependent: :destroy
  accepts_nested_attributes_for :planned_roles, :reject_if => :all_blank, :allow_destroy => true

end
