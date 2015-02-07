# encoding: utf-8

module Jekyll
  module PostImageFilter

    def post_image(content, max_length = 15, continuation_string = "...")
      url = content.gsub('/blog/', '').gsub('/', '-')
      url = '/img/posts/' + url + '.jpg'
      url
    end

  end
end

Liquid::Template.register_filter(Jekyll::PostImageFilter)