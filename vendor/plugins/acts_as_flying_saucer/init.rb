# Include hook code here
require 'config'
require 'xhtml2pdf'
require 'acts_as_flying_saucer_controller'
require 'acts_as_flying_saucer_view'
require 'daemons'
ActionController::Base.send(:include, ActsAsFlyingSaucer::Controller)
