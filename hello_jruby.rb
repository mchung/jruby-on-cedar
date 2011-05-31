require 'sinatra/base'

module HelloJruby
  class Application < Sinatra::Base
    get "/" do
      'hello, jruby!'
    end
  end
end