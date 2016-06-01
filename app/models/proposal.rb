class Proposal < ActiveRecord::Base
  belongs_to :volunteer
  belongs_to :organisation
end
