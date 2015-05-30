# encoding: utf-8

module Jekyll
  module UtilFilter

    def limit_offset(content, limit, page=1)
      page = page - 1
      page = page * limit
      content[page..(page+limit-1)]
    end

  end
end

Liquid::Template.register_filter(Jekyll::UtilFilter)