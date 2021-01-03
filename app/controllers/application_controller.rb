class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get '/recipes' do 
    @recipes = Recipe.all
    erb :index
  end 
  
  get "/recipes/new" do 
    erb :new 
  end
  
<<<<<<< HEAD
  post '/recipes' do 
    new_recipe = Recipe.new
    new_recipe.name = params[:name]
    new_recipe.ingredients = params[:ingredients]
    new_recipe.cook_time = params[:cook_time]
    new_recipe.save
    redirect "recipes/#{new_recipe.id}"
  end 
  
  get "/recipes/:id" do 
    @recipe = Recipe.find_by_id(params[:id])
=======
  post 'recipes' do 
    @new_receipe = Recipe.create({
      :name => params[:name],
      :ingredients => params[:ingredients],
      :cook_time => params[:cook_time]
    })
    
    redirect :"recipes/#{@new_receipe.id}"
  end 
  
  get "/recipes/:id" do 
    @recipe = Recipe.find(params.id)
>>>>>>> 7eada854fcb0db9e75f7ddcb2b4893a245da24e9
    erb :show
  end 
  
  get '/recipes/:id/edit' do  
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end

  patch '/recipes/:id' do 
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.name = params[:name]
    @recipe.ingredients = params[:ingredients]
    @recipe.cook_time = params[:cook_time]
<<<<<<< HEAD
    @recipe.save
    redirect "/recipes/#{@recipe.id}"
=======

    @recipe.save
    redirect to "/recipes/#{@recipe.id}"
>>>>>>> 7eada854fcb0db9e75f7ddcb2b4893a245da24e9
  end
  
  delete '/recipes/:id' do 
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.delete
<<<<<<< HEAD
    redirect '/recipes'
=======
    redirect to '/recipes'
>>>>>>> 7eada854fcb0db9e75f7ddcb2b4893a245da24e9
  end



end
