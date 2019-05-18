Rails.application.routes.draw do
  resources :horas_complementares do
    collection do 
      get 'carregar_atividades_categoria'
    end
  end
  # get 'horas_complementares/index'
  # post 'horas_complementares/create'
  # post 'horas_complementares/update'

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
  get 'dashboards/categoria'
  get 'dashboards/download_anexo'
  get 'dashboards/deletar_hora_complementar'

  devise_for :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'dashboards#index'
end
