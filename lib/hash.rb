class Hash
  def deep_compact
    inject({}) do |new_hash, (key, value)|
      new_value = (value.kind_of?(Hash) || value.is_a?(Array)) ? value.deep_compact : value

      new_hash[key] = new_value unless new_value.nil?
      new_hash
    end
  end
end