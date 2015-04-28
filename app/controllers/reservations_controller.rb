class ReservationsController < ApplicationController
  before_filter :load_restaurant

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      redirect_to restaurants_path, notice: 'Reservation created successfully'
    else
      render 'restaurants/show'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:date, :time, :party_size, :restaurant_id)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
