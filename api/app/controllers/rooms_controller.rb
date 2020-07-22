class RoomsController < ApplicationController
	before_action :set_room, only: [:show, :update, :destroy]

	# GET /rooms
	def index
		@rooms = Room.all

		render json: @rooms
	end

	# GET /rooms/1
	def show
		@room = Room.find(params[:id])
		render json: @room
	end

	# POST /rooms
	def create
		room = Room.new(room_params)
		room.ip = request.remote_ip

		if room.save
		render json: { status: 'SUCCESS', data: room }
		else
		render json: {status: :unprocessable_entity, data: room.errors}
		end
	end

	# PATCH/PUT /rooms/1
	def update
		if @room.update(room_params)
		render json: @room
		else
		render json: @room.errors, status: :unprocessable_entity
		end
	end

	# todo DELETE /rooms/1
	def destroy
		@room.destroy
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_room
			@room = Room.find(params[:id])
		end

		# Only allow a trusted parameter "white list" through.
		def room_params
			params.permit(:name)
		end
end
