Rails.application.routes.draw do
  root 'calc#input'
  post '/output', to: 'calc#output'
end
