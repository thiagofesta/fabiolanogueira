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

  end
end

Liquid::Template.register_filter(Jekyll::PostImageFilter)