func isAnagram(s: String, t: String) -> Bool {
    guard s.count == t.count else {
        print("\(s) \(t) Is NOT an anagram because they are different letter lengths")
        return false
    }
    
    var sDict = [String : Int]()
    var tDict = [String : Int]()
    
    for char in s {
        let l = String(char)
        if let value = sDict[l] {
            sDict[l] = value + 1
        } else {
            sDict[l] = 1
        }
    }
    
    for char in t {
        let l = String(char)
        if let value = tDict[l] {
            tDict[l] = value + 1
        } else {
            tDict[l] = 1
        }
    }
    
    let isAnagram = tDict == sDict
    print(isAnagram ? "\(s) \(t) Is an anagram" : "\(s) \(t) Is NOT an anagram")
    return isAnagram
}

isAnagram(s: "team", t: "meat")
isAnagram(s: "team", t: "meet")
isAnagram(s: "racecar", t: "carrace")
isAnagram(s: "jar", t: "jam")
isAnagram(s: "jars", t: "jam")


