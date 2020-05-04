class ApplicationController < ActionController::Base
  def hello
      render html: "hello, world! and you!"
    end
end
