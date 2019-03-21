class HomeController < ApplicationController
  def index
      @riskfactorcancerdeaths = Riskfactorcancerdeath.all
      @riskfactorcancerdeaths_causes ||= []
      @riskfactorcancerdeaths_sharedeaths ||= []
      @riskfactorcancerdeaths.each do |riskfactorcancerdeath|
       p riskfactorcancerdeath.to_s
          p riskfactorcancerdeath.cause
         @riskfactorcancerdeath_causes << riskfactorcancerdeath.cause
          @riskfactorcancerdeath_sharedeaths << riskfactorcancerdeathshare_deaths
        end

end
end 


#def index
 #  @cruises = Cruise.all
  # @cruise_names = []
  # @cabins_available = []
  # @cruises.each do |cruise|
  #   @cruise_names << cruise.name
  #   @cruise_cabins = Cabin.where(["ship_id = ?", cruise.ship_id]).count('id')
  #   @cabins_available << @cruise_cabins
 #  end
 #    @reservation_groups = Reservation.all.group('cruise_id').count('id')
#
 #    @bookings = []
  #   @reservation_groups.each do |group|
  #   @bookings << group[1]
  # end



   