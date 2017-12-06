class SavedFiltersList < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
    @buy_filters = Element.new(:id, 'buy_filters')
    @listed_filters = ElementGroup.new(:id, 'row_filter_name')
  end

  def visible?
    @title.visible?
    @buy_filters.visible?
  end

  def open_filter(name)
    @listed_filters.click_by_text(name)
  end

  def saved_successfully(saved_filter)
    @listed_filters.find_by_text(saved_filter)
  end

  def deleted_successfully(deleted_filter)
    if @listed_filters.any?
      raise "There are visible listed filters"
    end
  end
end