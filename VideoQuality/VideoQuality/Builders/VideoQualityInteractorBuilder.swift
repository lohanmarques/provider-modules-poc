//  Copyright © 2020 Lohan Marques. All rights reserved.

public final class VideoQualityInteractorBuilder {
    
    static func make(output: VideoQualityContractOutput, identifier: String, storage: UserDefaults) -> VideoQualityInteractor {
        let manager = VideoQualityLocalManager(defaults: storage)
        let interactor = VideoQualityInteractor(output: output,
                                                repository: manager,
                                                identifier: identifier)
        
        return interactor
        
    }
}
