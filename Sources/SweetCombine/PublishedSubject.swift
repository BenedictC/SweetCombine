import Combine


@propertyWrapper
public struct PublishedSubject<Output> {

    public var wrappedValue: Output {
        get { projectedValue.value }
        nonmutating set { projectedValue.value = newValue }
    }

    public let projectedValue: CurrentValueSubject<Output, Never>

    public init(wrappedValue: Output) {
        self.projectedValue = CurrentValueSubject(wrappedValue)
    }
}
