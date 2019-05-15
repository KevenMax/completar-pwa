Rails.application.routes.draw do
  get 'horas_complementares/index'

  get 'pessoas/index'
  get 'pessoas/cadastro_final'
  get 'pessoas/perfil'
  get 'pessoas/editar_perfil'
  post 'pessoas/cadastrar'
  post 'pessoas/editar'

  get 'atividades/index'

  get 'categorias/index'

  get 'cursos/index'

  get 'campus/index'

  get 'dashboards/index'

  devise_for :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'dashboards#index'
end
