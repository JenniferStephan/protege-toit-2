class Heb < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  SECURITY_FEATURES = [
    "code à l'entrée",
    "caméra de surveillance 24h/24",
    "gardien 24h/24",
    "gardien à horaires définis",
    "autres"
    ]

  validates :security_features, presence: true, inclusion: { in: SECURITY_FEATURES }, on: :create

end
