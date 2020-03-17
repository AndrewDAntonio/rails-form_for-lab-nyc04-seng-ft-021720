class SchoolclassesController < ApplicationController
    def index
        @schoolclasses = Schoolclass.all
    end

    def new
        @schoolclass = Schoolclass.new
    end

    def show
        @schoolclass = Schoolclass.find(params[:id])
    end

    def create
        @schoolclass = Schoolclass.create(schoolclass_params)
        redirect_to student_path(@student)
    end

    def update
        @schoolclass = Schoolclass.find(params[:id])
        @schoolclass.update(schoolclass_params)
        redirect_to schoolclass_path(@schoolclass)
    end

    def edit
    end


    private

    def schoolclass_params
        params.require(:schoolclass).permit(:title, :room_number)
    end
end