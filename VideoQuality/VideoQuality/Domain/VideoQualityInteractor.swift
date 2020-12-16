//  Copyright © 2020 Lohan Marques. All rights reserved.

import Foundation

final class VideoQualityInteractor: VideoQualityContractInput {
    
    weak var output: VideoQualityContractOutput?
    let repository: VideoQualityRepository
    let identifier: String
    
    init(output: VideoQualityContractOutput,
         repository: VideoQualityRepository,
         identifier: String) {
        self.output = output
        self.repository = repository
        self.identifier = identifier
    }
    
    func fetchSelected() -> VideoQualityType {
        guard let value = repository.fetch(for: makeDefaultsKey()) else { return .automatic }
        
        return VideoQualityType(rawValue: value) ?? .automatic
    }
    
    func save(type: VideoQualityType) {
        repository.save(value: type.rawValue, for: makeDefaultsKey())
        output?.didChangeVideoQuality(new: type)
    }
    
    private func makeDefaultsKey() -> String {
        return "\(VideoQualityConstants.defaultsKey)-\(identifier)"
    }
}
