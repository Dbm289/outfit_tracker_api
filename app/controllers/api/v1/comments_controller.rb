module api
    module v1
        class CommentsController < ApplicationController
            def index
                @comments = Comment.all
                render json: @comments, status: 200
            end
        
            def show
                @comment = comment.find(params[:id])
                render json: @comment, status: 200
            end
        
            def create
                @comment = comment.create(comment_params)
                if @comment
                    render json: @comment
                else
                    render json: {error: 'This comment could not be created.'}
                end
            end
        
            def update
                @comment = comment.find(params[:id])
                @comment.update(comment_params)
                if @comment
                    render json: @comment
                else
                    render json: {error: 'This comment could not be edited.'}
                end
            end
        
            def destroy
                comment = comment.find(params[:id])
                comment.destroy
                render json: {message: 'Comment successfully deleted.'}
            end
        
            private
        
            def comment_params
                params.require(:comment).permit(:text)
            end
        end

    end

end