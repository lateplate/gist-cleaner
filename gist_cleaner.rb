require 'httparty'

class GistCleaner
  include HTTParty

  @username = 'your_username'
  @password = 'your_password'

  base_uri 'https://api.github.com'
  basic_auth @username, @password

  def self.delete_private_gists
    gists = get("/users/#{@username}/gists", headers: {"User-Agent" => @username})
    gists = gists.select { |g| g["public"] == false }

    if gists.empty?
      false
    else
      gists.each_with_index do |gist, i|
        id = gist["id"]
        puts "#{i+1}. DELETING: http://gist.github.com/#{@username}/#{id}"
        delete("/gists/#{id}", headers: {"User-Agent" => @username})
      end
    end
  end
end

loop do
  break if GistCleaner.delete_private_gists == false
end