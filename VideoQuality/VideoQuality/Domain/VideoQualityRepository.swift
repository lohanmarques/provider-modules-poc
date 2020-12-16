//  Copyright © 2020 Lohan Marques. All rights reserved.

protocol VideoQualityRepository {
    func fetch(for key: String) -> String?
    func save(value: String, for key: String)
}
