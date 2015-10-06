=begin
  Usage:
    {% parse {{ include.key }}.image %}
=end
module Jekyll
  class ParseTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      res = Liquid::Template.parse(@text).render(context)
      Liquid::Template.parse("{{#{res}}}").render(context)
    end
  end
end
Liquid::Template.register_tag('parse', Jekyll::ParseTag)