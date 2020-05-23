Rails.application.routes.draw do
  	get '/'                    =>'home#index'
	post 'home/create'
	get 'home/create_form'     =>'home#create_form'
	
  	post 'home/update/:id'     =>'home#update'
 	get 'home/update_form/:id' =>'home#update_form'	
	get 'home/delete/:id'      =>'home#delete'
	
	post 'reply_create/:article_id' => 'home#reply_create'
	get 'reply_delete/:reply_id' => 'home#reply_delete'
	
	get 'reply_update_form/:reply_id' => 'home#reply_update_form'
	
	post 'reply_update/:reply_id' => 'home#reply_update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
