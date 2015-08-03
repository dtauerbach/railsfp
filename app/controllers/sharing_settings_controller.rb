class SharingSettingsController < ApplicationController
  def index
    @sharingsettings = SharingSetting.all
  end
end
