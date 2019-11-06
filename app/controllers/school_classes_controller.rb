class SchoolClassesController < ApplicationController

    def new # renders new form, doesn't take in any values --> GET
        @school_class = SchoolClass.new 
    end

    def create # --> GET
        @school_class = SchoolClass.new
        @school_class.title = params[:school_class][:title]
        @school_class.room_number = params[:school_class][:room_number] 
        @school_class.save
        redirect_to school_class_path(@school_class) 
    end 

    def show # shows individual class --> GET
        @school_class = SchoolClass.find(params[:id]) 
    end 

    def edit # renders edit view, doesn't take in any values --> GET
        @school_class = SchoolClass.find(params[:id])  
    end 
    
    def update # updates database record --> PATCH http request
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        redirect_to school_class_path(@school_class)
    end 

end
