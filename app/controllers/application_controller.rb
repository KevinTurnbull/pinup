class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # force_ssl if: :ssl_configured?

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  def download_csv_template
    send_file 'template.csv', :disposition => 'attachment'
  end

  private

    def ssl_configured?
      !Rails.env.development?
    end
end
