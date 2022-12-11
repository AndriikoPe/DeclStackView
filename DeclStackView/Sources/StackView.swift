//
//  StaciView.swift
//  StackView
//
//  Created by Andriiko on 11.12.2022.
//

import UIKit

public class StackView: UIStackView {
    public static var vertical: StackView {
        initialize(with: .vertical)
    }
    
    public static var horizontal: StackView {
        initialize(with: .horizontal)
    }
    
    private static func initialize(
        with axis: NSLayoutConstraint.Axis
    ) -> StackView {
        let stack = StackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = axis
        return stack
    }
}

public extension StackView {
    @discardableResult func alignment(
        _ alignment: UIStackView.Alignment
    ) -> Self {
        self.alignment = alignment
        return self
    }
    
    @discardableResult func distribution(
        _ distribution: UIStackView.Distribution
    ) -> Self {
        self.distribution = distribution
        return self
    }
    
    @discardableResult func spacing(
        _ spacing: CGFloat
    ) -> Self {
        self.spacing = spacing
        return self
    }
    
    @discardableResult func arranged(
        @StackContentBuilder _ build: () -> [UIView]
    ) -> Self {
        build().forEach(addArrangedSubview)
        return self
    }
}

@resultBuilder
public struct StackContentBuilder {
    public static func buildEither(first component: LayoutGroup) -> [UIView] {
        component.views
    }
    
    public static func buildOptional(_ component: [UIView]?) -> [UIView] {
        component?.flatMap { $0.views } ?? []
    }
    
    public static func buildEither(second component: LayoutGroup) -> [UIView] {
        component.views
    }
    
    public static func buildBlock(_ components: LayoutGroup...) -> [UIView] {
        components.flatMap { $0.views }
    }
    
    public static func buildArray(_ components: [[UIView]]) -> [UIView] {
        components.flatMap { $0.views }
    }
}

public protocol LayoutGroup {
    var views: [UIView] { get }
}

extension UIView: LayoutGroup {
    public var views: [UIView] { [self] }
}

extension Array: LayoutGroup where Element == UIView {
    public var views: [UIView] { self }
}

