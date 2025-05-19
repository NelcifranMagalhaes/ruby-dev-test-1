module Api
  module V1
    class DirectoriesController < ApplicationController
      before_action :retrieve_directory, only: %i[update destroy]

      def index
        @directories = Directory.all
        render json: @directories, status: :ok
      end

      def show; end

      def create
        @directory = Directory.new(directory_params)

        if @directory.save
          render json: { id: @directory.id, name: @directory.name,
                        content: @directory.content.attached? ? @directory.content : "Sem arquivos" }, status: :created
        else
          render json: { errors: @directory.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        if @directories.update(directory_params)
          render json: { id: @directories.id, name: @directories.name,
                        content: @directories.content.attached? ? @directories.content : "Sem arquivos" }, status: :ok
        else
          render json: { errors: @directories.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        if @directories.destroy
          render json: { message: "Diretório excluído com sucesso" }, status: :no_content
        else
          render json: { errors: @directories.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def retrieve_directory
        @directories = Directory.find(params[:id])
      end

      def directory_params
        params.require(:directory).permit(:name, :content,
                                          subdirectories_attributes: %i[id name content],
                                          file_items_attributes: %i[id name content])
      end
    end
  end
end
