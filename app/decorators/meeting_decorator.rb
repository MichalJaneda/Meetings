class MeetingDecorator < Draper::Decorator
  delegate_all
  decorates_association :place
end