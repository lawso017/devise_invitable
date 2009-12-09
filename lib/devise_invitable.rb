Devise.module_eval do
  # Time interval where the invitation token is valid.
  mattr_accessor :invite_for
  @@invite_for = 0
end
Devise::ALL = (Devise::ALL + [:invitable]).freeze
Devise::CONTROLLERS = Devise::CONTROLLERS.merge(:invitations => :invitable).freeze

module DeviseInvitable; end

require 'devise_invitable/mailer'
require 'devise_invitable/routes'
require 'devise_invitable/schema'
require 'devise_invitable/rails'
