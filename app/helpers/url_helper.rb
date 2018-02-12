# frozen_string_literal: true

module UrlHelper
  # Fetch primary url's
  def fetch_primary_urls
    [
      { title: t("primary_urls.about"),      url: about_index_path,      id: 1 },
      { title: t("primary_urls.quality"),    url: quality_index_path,    id: 2 },
      { title: t("primary_urls.courses"),    url: categories_path,       id: 3, klass: "menu-dropdown-trigger" },
      { title: t("primary_urls.articles"),   url: articles_path,         id: 4 },
      { title: t("primary_urls.contact"),    url: contact_index_path,    id: 5 },
      { title: t("primary_urls.newsletter"), url: newsletter_index_path, id: 6 }
    ]
  end

  # Active Link
  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end
end
