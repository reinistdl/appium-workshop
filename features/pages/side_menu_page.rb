class SideMenuPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.ImageView[@contend-desc="notifyus"]')
    @pick_options = ElementGroup.new(:id, 'item_name')
  end

  def visible?
    @title.visible?
    @pick_options.any?
  end

  def select_item(item)
    @pick_options.click_by_text(item)
  end
end