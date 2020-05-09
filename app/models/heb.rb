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

  SERVICES = [
    "suivi psychologique",
    "accompagnement juridique",
    "garde d'enfants",
    "centre d'écoute",
    "autres"
  ]

  validates :security_features, presence: true, inclusion: { in: SECURITY_FEATURES }, on: :create
  validates :services, presence: true, inclusion: { in: SERVICES }, on: :create

end
