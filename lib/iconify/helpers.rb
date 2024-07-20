module Iconify::Helpers
  def icon(name, suffix: Iconify.configuration.default_suffix, **attrs)
    suffix = suffix.to_s
    icon_name = name.to_s.dasherize
    icon_name = "#{icon_name}-#{suffix}" if suffix.present?

    icon = Iconify::ICON_DATA["icons"][icon_name]

    tag.span { "#{icon_name} missing" } if icon.nil?

    viewbox = read_view_box(icon)

    tag.svg(xlmns: "http://www.w3.org/2000/svg", viewBox: viewbox, **attrs) do
      raw(icon["body"])
    end
  end

  private

  def read_view_box(icon)
    left = icon["left"] || Iconify::ICON_DATA["left"] || 0
    right = icon["right"] || Iconify::ICON_DATA["right"] || 0
    width = icon["width"] || Iconify::ICON_DATA["width"] || 16
    height = icon["height"] || Iconify::ICON_DATA["height"] || 16

    "#{left} #{right} #{width} #{height}"
  end
end
