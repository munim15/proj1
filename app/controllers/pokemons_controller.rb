class PokemonsController < ApplicationController
  def new
      puts 'HEEEFSFAFSAFSAFSFSFSAFSFS'
      #@pokemon = Pokemon.new
  end

  def create
      puts "IN HERE" 
      pokemon = Pokemon.new
      pokemon.name = params[:pokemon][:name]
      pokemon.health = 100
      pokemon.level = 1
      pokemon.trainer_id = current_trainer.id
      if pokemon.save
         path = '/trainers/' + current_trainer.id.to_s
         redirect_to path
      else
         flash[:error] = pokemon.errors.full_messages.to_sentence
         render new_pokemon_path
      end
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
      #puts pokemon
      pokemon.trainer_id = current_trainer.id
      #puts current_trainer
      #puts "HHHHHHAAAGHHA"
      pokemon.save
      redirect_to '/'
  end

  def damage
      pokemon = Pokemon.find(params[:id])
      pokemon.health = pokemon.health - 10
      pokemon.save
      if pokemon.health <= 0
         pokemon.destroy
      end      
      path = '/trainers/' + current_trainer.id.to_s
      redirect_to path
  end
end
