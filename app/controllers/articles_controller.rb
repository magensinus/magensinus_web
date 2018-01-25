# frozen_string_literal: true

class ArticlesController < ApplicationController
  # /articles
  def index
    @journal_articles = Journal::Article.where(magensinus: true).order(published_at: :asc)
  end

  # /articles/Hgy897jgfv
  def show
    @journal_article = Journal::Article.find_by(slug: params[:id])
  end
end
