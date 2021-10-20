class UserBooksController < ApplicationController
    before_action :confirm_authentication

    def create
        user_book = current_user.user_books.new(user_book_params)
        if user_book.save
            render json: user_book, status: :created
        else
            render json: user_book.errors, status: :unprocessable_entity
        end
    end

    def update
        user_book = UserBook.find(params[:id])
        if user_book.update(user_book_params)
            render json: user_book, status: :ok
        else
            render json: user_book.errors, status: :unprocessable_entity
        end
    end

    def destroy
        UserBook.find(params[:id]).destroy
    end

    private

    def user_book_params
        params.permit(:book_id, :read)
    end
    
end
