# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

resources :identification_type, controller: 'identification_type'
resources :human_type, controller: 'human_type'
resources :payment_method_type, controller: 'payment_method_type'
resources :human, controller: 'human'
resources :rider, controller: 'rider'
resources :driver, controller: 'driver'
resources :payment_method, controller: 'payment_method'
resources :trip, controller: 'trip'
