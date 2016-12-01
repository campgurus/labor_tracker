class Shift < ApplicationRecord
  after_create :set_role_from_plan


private
  def set_role_from_plan
    if PlannedRole.exists?(employee_id: self.employee_id)
      self.update_attribute :role_id, (PlannedRole.find_by employee_id: self.employee_id).role_id
    end
  end
end
