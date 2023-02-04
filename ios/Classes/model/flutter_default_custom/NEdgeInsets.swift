struct NEdgeInsets {
    let left: CGFloat
    let top: CGFloat
    let right: CGFloat
    let bottom: CGFloat

    var uiEdgeInsets: UIEdgeInsets {
        get {
            UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        }
    }

    static func fromDict(_ args: Any) -> NEdgeInsets {
        let d = asDict(args, valueCaster: asCGFloat)
        return NEdgeInsets(
                left: d["left"]!,
                top: d["top"]!,
                right: d["right"]!,
                bottom: d["bottom"]!
        )
    }
}
