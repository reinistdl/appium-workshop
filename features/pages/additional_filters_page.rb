class AdditionalFiltersPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Iegādājies papildu filtru")]')
    @cancel_offer = Element.new(:id, 'buy_cancel_text')
    @buy_offer = Element.new(:id, 'buy_accept_text')
  end

  def visible?
    @title.visible?
    @cancel_offer.visible?
    @buy_offer.visible?
  end

  def decline_offer
    @cancel_offer.click
  end

end