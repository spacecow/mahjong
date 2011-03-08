class TablesController < ApplicationController
  load_and_authorize_resource

  def index
    @tables = Table.all
  end

  def show
    @table = Table.find(params[:id])
  end

  def new
    @table = Table.new
  end

  def create
    redirect_to tables_path and return if Table.count >= 8
    @table = Table.new(params[:table])
    4.times{ @table.reservations.build }
    if @table.save
      redirect_to tables_path, :notice => created(:table)
    else
      render :action => 'new'
    end
  end

  def edit
    @table = Table.find(params[:id])
  end

  def update
    @table = Table.find(params[:id])
    if @table.update_attributes(params[:table])
      redirect_to tables_path, :notice  => updated(:table)
    else
      render :action => 'edit'
    end
  end

  def destroy
    @table = Table.find(params[:id])
    @table.destroy
    redirect_to tables_url, :notice => deleted(:table)
  end
end
