class Article < ApplicationRecord
  belongs_to :user, optional: true

  # def set_ranking_data
  #     ids = REDIS.zrevrangebyscore "articles/daily/#{Date.yesterday.to_s}", "+inf", 0, limit: [0, 5]
  #     @ranking_articles = ids.map{ |id| Article.find(id) }
  #     if @ranking_articles.count < 5
  #       adding_articles = Article.order(published_at: :DESC, updated_at: :DESC).where.not(id: ids).limit(5 - @ranking_articles.count)
  #       @ranking_articles.concat(adding_articles)
  #     end
  # end

  # def redis_access
  #   REDIS.zincrby "articles", 1, @article.id
  # end
  # #
  # def most_popular(limit: 5)
  #   most_polular_ids = REDIS.zrevrangebyscore "articles", "+inf", 0, limit: [0, 5]
  #   where(id: most_polular_ids).sort_by{ |article| most_popular_ids.index(article.id.to_s) }
  # end
  # #
  # def redis_page_view
  #   REDIS.zscore("articles", @article.id).floor
  # end
end
