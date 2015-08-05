class SharingSettingsController < ApplicationController
  def index
    @sharing_settings = SharingSetting.all
  end
end
