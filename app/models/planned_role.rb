class PlannedRole < ApplicationRecord
  belongs_to :shift_plan
  validates :employee_id, uniqueness: { message: 'You can only have one assignment per badge number. Please find and remove the duplication below.'}
end
