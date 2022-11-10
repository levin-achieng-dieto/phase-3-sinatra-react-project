class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "this time Good luck with your project!" }.to_json
  end

  get '/posts' do
    posts = Post.all
    posts.to_json(inlude: :likes)
  end
   
  # post '/posts' do
  #   post = Post.create(
  #     title: params[:title],
  #     image: params[:image],
  #     short_story: params[:short_story]
  #   )
  #   post.to_json
  # end

  # patch '/posts/:id' do
  #   post = Post.find(params[:id])
  #   post.update(
  #     title: params[:title],
  #     image: params[:image],
  #     short_story: params[:short_story]
  #   )
  #   post.to_json
  # end

  # delete '/posts/:id' do
  #   post = Post.find(params[:id])
  #   post.destroy
  #   post.to_json
  # end

end
