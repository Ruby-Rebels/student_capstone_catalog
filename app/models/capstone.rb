class Capstone

  attr_reader :name, :description, :screenshot

  def initialize(input)
    @name = input["name"],
    @description = input["description"],
    @screenshot = input["screenshot"]
  end

  def self.find_by(options)
    api_student = Unirest.get("http://localhost:3000/api/v1/students/#{options.id}.json").body
    Capstone.new(api_student)
  end
end
