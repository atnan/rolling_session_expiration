module RollingSessionExpiration
  
  def self.included(base)
    base.cattr_accessor :session_expiration_period
    base.alias_method_chain :initialize, :dynamic_session_expiration
  end
  
  def initialize_with_dynamic_session_expiration(request, options)
    options['session_expires'] = Time.now + session_expiration_period if session_expiration_period
    initialize_without_dynamic_session_expiration(request, options)
  end
  
end
