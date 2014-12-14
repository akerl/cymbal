##
# Convert hash keys to symbols
module Cymbal
  class << self
    def symbolize(obj)
      return symbolize_hash(obj) if obj.is_a? Hash
      return symbolize_array(obj) if obj.is_a? Array
      obj
    end

    private

    def symbolize_hash(hash)
      hash.each_with_object({}) { |(k, v), o| o[k.to_sym] = symbolize(v) }
    end

    def symbolize_array(array)
      array.map { |item| symbolize(item) }
    end
  end
end
