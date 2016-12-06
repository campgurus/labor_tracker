class Shift < ApplicationRecord
  after_create :set_role_from_plan, :create_shift_actual, :set_location_from_plan
  belongs_to :shift_actual


private
  #copies the role from the plan to actual shift when employee scans in
  def set_role_from_plan
    if PlannedRole.exists?(employee_id: self.employee_id)
      self.update_attribute :role_id, (PlannedRole.find_by employee_id: self.employee_id).role_id
    end
  end

  #copies the role from the plan to actual shift when employee scans in
  def set_location_from_plan
    if PlannedRole.exists?(employee_id: self.employee_id)
      self.update_attribute :location_id, (PlannedRole.find_by employee_id: self.employee_id).location_id
    end
  end

  # if none exists, creates actual shift plan to house current assignments
  def create_shift_actual
    if !ShiftActual.exists?(date: Date.today)
      ShiftActual.create(date: Date.today)
    end
    self.update_attribute :shift_actual_id, ShiftActual.last.id
  end
end
