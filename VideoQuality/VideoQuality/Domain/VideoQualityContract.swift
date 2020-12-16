//  Copyright © 2020 Lohan Marques. All rights reserved.

protocol VideoQualityContractInput {
    func fetchSelected() -> VideoQualityType
    func save(type: VideoQualityType)
}

protocol VideoQualityContractOutput: class {
    func didChangeVideoQuality(new type: VideoQualityType)
}
