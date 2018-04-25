class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, inclusion: { in: 40..200 }
  validates_associated :store, presence: true
  before_create :set_password

  private
    def set_password
      self.password = (0...8).map { (65 + rand(26)).chr }.join
    end
end
