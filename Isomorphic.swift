class Isomorphic {

    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
    
        var sToT = [Character: Character]()
        var tToS = [Character: Character]()
        
        for (sChar, tChar) in zip(s, t) {
            if let mapped = sToT[sChar], mapped != tChar { return false }
            if let mapped = tToS[tChar], mapped != sChar { return false }
            
            sToT[sChar] = tChar
            tToS[tChar] = sChar
        }
        return true
    }
}

let isoMorphic = Isomorphic()
let result1 = isoMorphic.isIsomorphic("egg", "add")
let result2 = isoMorphic.isIsomorphic("foo", "bar")
print(result1)
print(result2)