class Activity
  attr_reader :activity, :participants, :names, :bills
  attr_accessor :total_cost

  def initialize(activity, participants = {})
    @activity     = activity
    @participants = participants
    @names        = participants[:name]
    @bills        = participants[:cost]
    #@total_cost   = bills.reduce(:+)
  end

  def add_participant(name, bill)
    names << name
    bills << bill
    @total_cost += bill
  end
  
  # def split_bill
  #   total_cost/names.count
  # end

end

  


