# highlight.io

require "highlight"

Highlight::H.new(ENV["HIGHLIGHT_SECRET"]) do |c|
  c.service_name = "my-rails-app"
  c.service_version = "git-sha"
end

Rails.logger = Highlight::Logger.new(STDOUT)

highlightLogger = Highlight::Logger.new(nil)
Rails.logger.extend(ActiveSupport::Logger.broadcast(highlightLogger))