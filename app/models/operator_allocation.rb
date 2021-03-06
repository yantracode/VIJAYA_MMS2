class OperatorAllocation < ApplicationRecord
# belongs_to :operator, -> { with_deleted }
  belongs_to :shifttransaction, -> { with_deleted }
  belongs_to :machine, -> { with_deleted }
  has_many :operator_mapping_allocations,:dependent => :destroy
  has_one :operator_allot_detail, :dependent => :destroy

  accepts_nested_attributes_for :operator_allot_detail
end
