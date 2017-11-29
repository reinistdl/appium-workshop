class SettingsTest
  def initialize(pages)
    @pages = pages
  end

  def close_intro
    @pages.page_intro.close_intro_if_visible
  end

  def access_settings_screen(value)
    @pages.page_create_filter.open_side_menu
    @pages.page_menu.select_item(value)
  end

  def page_visible
    @pages.page_settings.visible?
  end
end