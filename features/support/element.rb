class Element
  def initialize(type, value)
    @value = Hash[:type => type, :value => value]
  end

  def visible?
    $driver.wait { $driver.find_element(@value[:type], @value[:value]).displayed? }
  end

  def any?
    $driver.find_elements(@value[:type], @value[:value]).any?
  end

  def click
    $driver.find_element(@value[:type], @value[:value]).click
  end
  def click_by_text(textValue)
    $driver.wait {$driver.find_element(:xpath, "//*[contains(@resource-id, \"main_row_background\")]/parent::*/*[contains(@text, \"#{textValue}\")]").displayed?}
    $driver.find_element(:xpath, "//*[contains(@resource-id, \"main_row_background\")]/parent::*/*[contains(@text, \"#{textValue}\")]").click
    #element = $driver.find_element(@value[:type], @value[:value])
    #element.find_element(:xpath, "parent::*/*[contains(@text, \"#{textValue}\")]").click
    #$driver.find_element(:xpath, "//*[contains(@resource-id, \"main_row_background\")]/parent::*/*[contains(@text, \"#{textValue}\")]").click
  end
  def scroll_to_exact(text)
    $driver.scroll_to_exact(text)
  end
end