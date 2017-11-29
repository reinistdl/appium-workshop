class SettingsTest
  def initialize(pages)
    @pages = pages
  end

  def close_intro
    @pages.page_intro.close_intro_if_visible
  end

  def open_side_menu(value)
    @pages.page_create_filter.open_side_menu
    @pages.menu_page.select_item(value)
  end
end