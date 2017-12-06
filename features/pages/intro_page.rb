class IntroPage < BasePage
  def initialize
    @button_close_intro = Element.new(:id, 'close_intro')
    @button_close_alert_ok = Element.new(:xpath, '//android.widget.Button[contains(@text, "OK")]')
    @button_cancel_offer = Element.new(:id, 'buy_cancel_text')
  end

  def visible?
    @button_close_intro.visible?
  end

  def close_intro_if_visible
    if @button_close_alert_ok.any?
      self.alert_accept
    end
    if @button_close_intro.any?
      @button_close_intro.click
    end
    if @button_cancel_offer.any?
      @button_cancel_offer.click
    end
  end
end