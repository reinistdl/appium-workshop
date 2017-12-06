class MenuPage < BasePage
  def initialize
    @title = Element.new(:id, 'drawer_user')
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