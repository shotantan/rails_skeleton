RailsAdmin.config do |config|

  ### Popular gems integration
  config.model Role do
    list do
      field :user do
        pretty_value do
          user_id = bindings[:object].user_id
          full_name = bindings[:view].full_name(user_id)
          bindings[:view].link_to "#{full_name}", bindings[:view].rails_admin.show_path('user', user_id)
        end
      end
      field :users
    end
  end
  config.model Sensor do
    list do
      field :user do
        pretty_value do
          user_id = bindings[:object].user_id
          full_name = bindings[:view].full_name(user_id)
          bindings[:view].link_to "#{full_name}", bindings[:view].rails_admin.show_path('user', user_id)
        end
      end
      field :user
    end
  end

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
