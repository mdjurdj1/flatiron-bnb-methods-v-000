class Review < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :guest, :class_name => "User"
  validates_presence_of :rating, :description, :reservation_id
  validate :accepted_and_checked_out


  private
<<<<<<< HEAD

=======
  
>>>>>>> 4ad6acd6304cdd2b3caea33baa165b6a93a1dfba
  def accepted_and_checked_out
    if !rating || !description || !reservation_id || reservation.checkout > Date.today || reservation.status =! "accepted"
      errors.add(:reservation, "Not a valid review, please check your parameters!")
    end
  end

end
