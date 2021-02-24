# todos_controller.rb
class TodosController < ApplicationController
  def index
    render plain: Todo.order(:id).map { |todo| todo.to_pleasant_string }.join("\n")
  end

  def show
    id = params[:id]
    begin
      todo = Todo.find(id)
      render plain: todo.to_pleasant_string
    rescue
      render plain: "ID not found."
    end
  end

  def create
    render plain: "#{params.to_s}"
  end
end
