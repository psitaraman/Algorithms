
def isAnagram(self, s: str, t: str) -> bool:
    if len(s) == len(t):
        sDict = {}
        for l in s:
            if l in sDict:
                sDict[l] = sDict[l] + 1
            else:
                sDict[l] = 1

        tDict = {}
        for l in t:
            if l in tDict:
                tDict[l] = tDict[l] + 1
            else:
                tDict[l] = 1

        print("\nsDict\n" + str(sDict))
        print("\ntDict\n" + str(tDict))
        if tDict == sDict:
            print("Is anagram")
            return True
        else:
            print("Not anagram")
            return False
    else:
        print("Not anagram because not same length")
        return False