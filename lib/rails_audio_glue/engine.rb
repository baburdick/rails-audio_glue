# Rails plugin which integrates AudioGlue library.
module RailsAudioGlue
  # :nodoc:
  class Engine < Rails::Engine
    initializer 'rails_audio_glue' do
      ::ApplicationController.send(:include, RailsAudioGlue::ControllerMethods)
    end
  end
end
