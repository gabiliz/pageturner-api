require "highlight"

class ApiController < ActionController::API
  include Highlight::Integrations::Rails

  around_action :with_highlight_context
end