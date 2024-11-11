module ApplicationHelper
  def format_date(date)
    I18n.l(date, format: "%-d de %B de %Y - %H:%M")
  end
end
