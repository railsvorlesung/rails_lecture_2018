
class VatId

  class << self

    def site
      'https://evatr.bff-online.de/evatrRPC'
    end # #site

    def get(ust_id)
      Hash.from_xml( RestClient.get("#{self.site}?UstId_1=DE123456789&UstId_2=#{ust_id}") )
    end # #get
  end # class << self
end
