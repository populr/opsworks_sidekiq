include_attribute 'deploy'

default[:sidekiq] = {}

node[:deploy].each do |application, deploy|
  default[:sidekiq][application.intern] = {}
  default[:sidekiq][application.intern][:syslog] = false
end

