# Add code from Readme
class BirdsController < ApplicationController
    def index
        @birds = Bird.all
    end

    def show
        @bird = Bird.find(params[:id])
    end

    def new
        @bird = Bird.new()
    end

    def create
        @bird = Bird.create(bird_params)
        redirect_to index_path
    end

    def edit
        @bird = Bird.find(params[:id])
    end

    def update
        @bird = Bird.find(params[:id])
        @bird.update(bird_params)
        redirect_to bird_path(@bird)
    end

    def delete
        Bird.find(params[:id])
    end
end