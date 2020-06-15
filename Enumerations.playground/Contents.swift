/*: - Copyright :  Bulldog Ventures Inc  ©  2020 */
import UIKit
/*: ### Enumerations
 An *Enumeration* defines a common type for a group of related values.
 *Enumeration* cases can specify associated values of any type to be stored along with each different case value.
 This is a very easy technique to limit the input requested from a user to a very specific set of answers.
 ### Example*/
enum CompassPoint {
    case north
    case south
    case east
    case west
}
/*: In the example below you can see that once an *Enumeration* is defined you can access its case value using *dot* syntax*/
var directionToHead = CompassPoint.north

/*: You can then use an *Enumeration* in a *Switch* statement as a technique to perform a task  like shown in the example below*/
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}
/*: *Enumerations* can be iterated over. In the example below by specifying the *CaseIterable* keyword in the *Enumeration* definition you have the ability to expand
 their usefullness*/
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("There are -> \(numberOfChoices) beverages available")
/*: You can also loop through *Enumerations**/
for beverage in Beverage.allCases {
    print(beverage)
}
