class TeachersController < ApplicationController
before_action :authenticate_user!
 #before_action :set_teacher, only: [:show, :edit, :update, :destroy]
	def new
		@teacher = Teacher.new
   end
       def index
	 	  @teachers= Teacher.all
	     end

      def show 
          @teacher= Teacher.find(params[:id])

        end 
      def create
  
          @teacher = Teacher.new(teacher_params)
 
          if @teacher.save
            redirect_to "/teachers/#{@teacher.id}" , notice:'teachers was successfully created' 
            else
             render 'new'
             end		
         end

         def update
          	@teacher= Teacher.find(params[:id])

          	if @teacher.update(teacher_params)

          	  redirect_to "/teachers/#{@teacher.id}",notice:'teachers was successfully updated' 
            else
            	render 'edit'
             end
        end
        def edit
            	@teacher= Teacher.find(params[:id])
            end
          def destroy
        	@teacher=Teacher.find(params[:id])
        	@teacher.destroy
        	redirect_to teachers_path, notice:'teachers was successfully deleted' 
        end


          private

          def teacher_params
           params.require(:teacher).permit(:title, :description,:image)
          end
end