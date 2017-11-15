class CreatedFilterDetails < BasePage
  def initialize(filter_name)
    @title = Element.new(:xpath, "//android.widget.TextView[contains(@text, \"#{filter_name}\")]")
    @delete_filter = Element.new(:id, 'delete_filter')
    @save_filter = Element.new(:id, 'save_filter')
  end

  def visible?
    @title.visible?
    @delete_filter.visible?
    @save_filter.visible?
  end

  def delete_filter
    @delete_filter.click
  end

end