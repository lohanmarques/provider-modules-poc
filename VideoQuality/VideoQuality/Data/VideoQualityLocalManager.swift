//  Copyright © 2020 Lohan Marques. All rights reserved.

import Foundation

final class VideoQualityLocalManager: VideoQualityRepository {
    
    let defaults: UserDefaults
    
    init(defaults: UserDefaults) {
        self.defaults = defaults
    }
    
    func fetch(for key: String) -> String? {
        return defaults.string(forKey: key)
    }
    
    func save(value: String, for key: String) {
        defaults.set(value, forKey: key)
    }
}
