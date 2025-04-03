func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  if powerUpActive && touchingEagle {
    return true
  }

  return false
}

func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
  if touchingPowerUp || touchingSeed {
    return true
  }

  return false
}

func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  if touchingEagle && !powerUpActive {
    return true
  }

  return false
}

func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  if lose(powerUpActive: powerUpActive, touchingEagle: touchingEagle) {
    return false
  }

  return true
}
