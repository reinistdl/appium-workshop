class FilterTest
  def initialize(pages, filters)
    @pages = pages
    @filters = filters
  end

  def close_intro
    @pages.page_intro.close_intro_if_visible
    @pages.page_create_filter.visible?
  end

  def open_filter_params(exact)
    @pages.page_create_filter.open_category(@filters.send(exact).cat)
    @filters.send(exact).sub_cats.each do |sub_cat|
      @pages.page_sub_category.open_sub_category(sub_cat)
    end
    @pages.page_paremeters.visible?
  end

  def set_filter_params(exact)
    @pages.page_paremeters.set_name(@filters.send(exact).name)
    @filters.send(exact).params.each do |param|
      @pages.page_paremeters.set_parameter(param)
    end
  end

  def submit_filter(exact)
    set_filter_params(exact)
    @pages.page_paremeters.save_filter
    @pages.page_saved_filters.visible?
    @pages.page_saved_filters.saved_successfully(@filters.send(exact).name)
  end

  def goto_saved_filter_page
    @pages.page_create_filter.open_menu
    @pages.page_menu.visible?
    @pages.page_menu.select_item("Meklēšanas filtri")
    @pages.page_saved_filters.visible?
  end

  def delete_saved_filter(exact)
    @pages.page_saved_filters.open_filter(@filters.send(exact).name)
    @pages.page_paremeters.delete_filter
    @pages.page_saved_filters.deleted_successfully(@filters.send(exact).name)
  end
end