import SwiftUI

public struct CardStackConfiguration: EnvironmentKey {

  public static var defaultValue = CardStackConfiguration()

  let maxVisibleCards: Int
  let swipeThreshold: Double
  let cardOffset: CGFloat
  let cardScale: CGFloat
  let animation: Animation
  let rotate: Bool
  let onlyHorizontal: Bool

  public init(
    maxVisibleCards: Int = 5,
    swipeThreshold: Double = 0.5,
    cardOffset: CGFloat = 10,
    cardScale: CGFloat = 0.1,
    animation: Animation = .default,
    rotate: Bool = true,
    onlyHorizontal: Bool = false
  ) {
    self.maxVisibleCards = maxVisibleCards
    self.swipeThreshold = swipeThreshold
    self.cardOffset = cardOffset
    self.cardScale = cardScale
    self.animation = animation
    self.rotate = rotate
    self.onlyHorizontal = onlyHorizontal
  }
}

extension EnvironmentValues {
  public var cardStackConfiguration: CardStackConfiguration {
    get { self[CardStackConfiguration.self] }
    set { self[CardStackConfiguration.self] = newValue }
  }
}
