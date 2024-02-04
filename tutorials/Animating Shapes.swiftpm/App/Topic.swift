/*
 See the License.txt file for this sample’s licensing information.
 */

import SwiftUI

struct Topic: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
    var description: String
    var systemSymbol: String
    var destination: Destination
}
