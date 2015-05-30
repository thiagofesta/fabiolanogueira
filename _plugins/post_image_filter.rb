# encoding: utf-8

module Jekyll
  module PostImageFilter

    def post_image(content, sufix = '')
      url = content.gsub('/blog/', '').gsub('/', '-')
      url = '/assets/images/posts/' + url

      if sufix != ''
        url += '-' + sufix
      end

      url += '.jpg'

      url
    end

    def limit_offset(content, limit, page=1)
      page = page - 1
      page = page * limit
      content[page..(page+limit-1)]
    end

  end
end

Liquid::Template.register_filter(Jekyll::PostImageFilter)