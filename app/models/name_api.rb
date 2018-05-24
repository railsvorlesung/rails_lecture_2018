
class NameApi
  class << self
    
    def site
     URI('http://www.thomas-bayer.com/restnames/name.groovy')
    end # .site

    def get_frequency(name)
      Hash.from_xml(
        RestClient.get("#{self.site}?name=#{name}")
      )[:restnames][:nameinfo]
    end # .get_frequency
  end # class << self

end
