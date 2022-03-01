open class TEACommon {
    
}

let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height

// MARK: - 根据6s适配
public func uiAdaptation(_ num: CGFloat) -> CGFloat {
    return ceil(UIScreen.main.scale * num * screenWidth / 375.0) / UIScreen.main.scale
}
