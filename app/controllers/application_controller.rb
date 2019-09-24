class ApplicationController < ActionController::API
  def token
    request.headers["Authorization"].split(" ")[1]
  end

  

  def decoded_token
    JWT.decode(token, "web062419", true, { algorithm: "HS256" })
  end

  def current_officer
    Officer.find(decoded_token[0]["officer_id"])
  end
end
