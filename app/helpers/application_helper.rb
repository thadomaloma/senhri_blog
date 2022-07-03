# frozen_string_literal: true

module ApplicationHelper
  def markdown(text)
    return '' if text.nil?

    render_options = { hard_wrap: true, link_attributes: { target: '_blank' } }
    extensions = { fenced_code_blocks: true, strikethrough: true, tables: true, autolink: true }
    renderer = Redcarpet::Render::HTML.new(render_options)
    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end
end
