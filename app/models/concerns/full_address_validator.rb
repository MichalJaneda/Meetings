class FullAddressValidator < ActiveModel::Validator
  REQUIRED_FIELDS = [:address, :building, :local]
  private_constant :REQUIRED_FIELDS

  def validate(record)
    REQUIRED_FIELDS.each do |column|
      raise "missing column #{column}" unless record.respond_to? column
    end

    record.errors.add(:address, 'Address can not be nil') unless record.address

    if record.building.nil? && !record.local.nil?
      record.errors.add(:address, 'Address can not be nil')
    end
  end

end