class Sem3SearchService
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def execute
    return [] unless params[:search]

    setup
    construct_query
    get_products
  end

  private

  def setup
    @sem3 = Semantics3::Products.new(Rails.application.secrets.sem3_api_key,
                                     Rails.application.secrets.sem3_api_secret)
  end

  def construct_query
    @sem3.products_field('search', params[:search])
  end

  def get_products
    r = @sem3.get_products()

    if r['code'].eql?('OK')
      r['results']
    else
      if r['message']
        m = JSON.parse(r['message'])
        Rails.logger.debug("\n+++ Sem3 API Error: #{m['message']} Code: #{m['code']} +++\n")
      end

      []
    end
  end
end
