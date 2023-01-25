import UIKit

class ReviewBaseTableViewCell<T>: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        configure()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure() {
        selectionStyle = .none
    }

    var model: T? {
        didSet { if let model = model { bind(model) } }
    }

    func bind(_ model: T) {}
}
