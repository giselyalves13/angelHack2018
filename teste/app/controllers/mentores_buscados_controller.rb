class MentoresBuscadosController < ApplicationController
  def index
  	sql = "SELECT * FROM fila_mentors JOIN disponibilidade_mentors ON fila_mentors_id = mentor_id WHERE habilidade = '"+ params[:habilidade]+ "' AND dia = '" + params[:dia] + "'"
    @fila_mentors = ActiveRecord::Base.connection.execute(sql)

  end
end
