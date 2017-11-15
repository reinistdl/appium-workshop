class FilterDeletion < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Dzēst filtru?")]')
    @delete_confim = Element.new(:xpath, '//android.widget.Button[contains(@text, "DZĒST")]')
    @delete_reject = Element.new(:xpath, '//android.widget.Button[contains(@text, "ATCELT")]')
  end

  def visible?
    @title.visible?
    @delete_confim.visible?
    @delete_reject.visible?
  end

  def accept_deletion
    @delete_confim.click
  end

end