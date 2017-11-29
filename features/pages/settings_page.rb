class SettingsPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Iestatījumi")]')
    @settings_content = ElementGroup.new(:id, 'settings_holder')
  end

  def visible?
    @title.visible?
    @settings_content.visible?
  end
end