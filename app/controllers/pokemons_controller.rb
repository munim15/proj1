class PokemonsController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def capture
      pokemon = Pokemon.find(params[:id])
      puts pokemon
      pokemon.trainer_id = current_trainer.id
      puts current_trainer
      puts "HHHHHHAAAGHHA"
      pokemon.save
      redirect_to '/'
  end
end
