##
# Convert hash keys to symbols
module Cymbal
  class << self
    def symbolize(obj)
      operate(obj, &:to_sym)
    end

    def stringify(obj)
      operate(obj, &:to_s)
    end

    def operate(obj, &block)
      return operate_hash(obj, &block) if obj.is_a? Hash
      return operate_array(obj, &block) if obj.is_a? Array
      obj
    end

    private

    def operate_hash(hash, &block)
      hash.each_with_object({}) do |(k, v), o|
        new_key = yield k
        o[new_key] = operate(v, &block)
        raise(ArgumentError, "Key collision in hash: #{new_key}") if new_key != k && hash.key?(new_key)
        o[new_key] = operate(v, &block)
      end
    end

    def operate_array(array, &block)
      array.map { |item| operate(item, &block) }
    end
  end
end
