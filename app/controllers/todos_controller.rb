# todos_controller.rb
class TodosController < ApplicationController
  def index
    render plain: Todo.order(:id).map { |todo| todo.to_pleasant_string }.join("\n")
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.to_pleasant_string
  end

  def create
    render plain: "#{params.to_s}"
  end
end
