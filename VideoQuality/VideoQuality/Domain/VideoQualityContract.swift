//  Copyright © 2020 Lohan Marques. All rights reserved.

public protocol VideoQualityContractInput {
    func fetchSelected() -> VideoQualityType
    func save(type: VideoQualityType)
}

public protocol VideoQualityContractOutput: class {
    func didChangeVideoQuality(new type: VideoQualityType)
}
