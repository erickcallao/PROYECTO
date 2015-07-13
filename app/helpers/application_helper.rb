module ApplicationHelper
	  def buscar_en_lista(lista, valor)
    lista.select{|v| v[1] == valor}[0]
  end

  def buscar_en_objetos(objetos, valor, id = :id )
    objetos.select{|v| v.send(id) == valor }
  end
end
#WillPaginate::ViewHelpers.pagination_options[:previous_label] = 'Página previa'
#WillPaginate::ViewHelpers.pagination_options[:next_label] = 'Página siguiente'


