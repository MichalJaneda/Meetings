class PlaceDecorator < Draper::Decorator
  delegate_all

  def full_address
    return 'None' if address.empty?

    parts = [address]
    parts << "Place: #{building}" if building

    if building && local
      parts << "#{building}/#{local}"
    elsif building
      parts << building
    end

    parts.compact.join(', ')
  end
end