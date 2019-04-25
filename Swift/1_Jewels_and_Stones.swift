func numJewelsInStones(_ J: String, _ S: String) -> Int {
    let jewels = Set<Character>.init(J)
    var counter = 0
    S.forEach {
        if jewels.contains($0) { counter = counter + 1 }
    }
    return counter
}

func numJewelsInStonesWithBitMask(_ J: String, _ S: String) -> Int {
    struct BitMaskOptions : OptionSet {
        let rawValue: Int

        static let a = BitMaskOptions(rawValue: 1 << 0)
        static let b = BitMaskOptions(rawValue: 1 << 1)
        static let c = BitMaskOptions(rawValue: 1 << 2)
        static let d = BitMaskOptions(rawValue: 1 << 3)
        static let e = BitMaskOptions(rawValue: 1 << 4)
        static let f = BitMaskOptions(rawValue: 1 << 5)
        static let g = BitMaskOptions(rawValue: 1 << 6)
        static let h = BitMaskOptions(rawValue: 1 << 7)
        static let i = BitMaskOptions(rawValue: 1 << 8)
        static let j = BitMaskOptions(rawValue: 1 << 9)
        static let k = BitMaskOptions(rawValue: 1 << 10)
        static let l = BitMaskOptions(rawValue: 1 << 11)
        static let m = BitMaskOptions(rawValue: 1 << 12)
        static let n = BitMaskOptions(rawValue: 1 << 13)
        static let o = BitMaskOptions(rawValue: 1 << 14)
        static let p = BitMaskOptions(rawValue: 1 << 15)
        static let q = BitMaskOptions(rawValue: 1 << 16)
        static let r = BitMaskOptions(rawValue: 1 << 17)
        static let s = BitMaskOptions(rawValue: 1 << 18)
        static let t = BitMaskOptions(rawValue: 1 << 19)
        static let u = BitMaskOptions(rawValue: 1 << 20)
        static let v = BitMaskOptions(rawValue: 1 << 21)
        static let w = BitMaskOptions(rawValue: 1 << 22)
        static let x = BitMaskOptions(rawValue: 1 << 23)
        static let y = BitMaskOptions(rawValue: 1 << 24)
        static let z = BitMaskOptions(rawValue: 1 << 25)
        static let A = BitMaskOptions(rawValue: 1 << 26)
        static let B = BitMaskOptions(rawValue: 1 << 27)
        static let C = BitMaskOptions(rawValue: 1 << 28)
        static let D = BitMaskOptions(rawValue: 1 << 29)
        static let E = BitMaskOptions(rawValue: 1 << 30)
        static let F = BitMaskOptions(rawValue: 1 << 31)
        static let G = BitMaskOptions(rawValue: 1 << 32)
        static let H = BitMaskOptions(rawValue: 1 << 33)
        static let I = BitMaskOptions(rawValue: 1 << 34)
        static let J = BitMaskOptions(rawValue: 1 << 35)
        static let K = BitMaskOptions(rawValue: 1 << 36)
        static let L = BitMaskOptions(rawValue: 1 << 37)
        static let M = BitMaskOptions(rawValue: 1 << 38)
        static let N = BitMaskOptions(rawValue: 1 << 39)
        static let O = BitMaskOptions(rawValue: 1 << 40)
        static let P = BitMaskOptions(rawValue: 1 << 41)
        static let Q = BitMaskOptions(rawValue: 1 << 42)
        static let R = BitMaskOptions(rawValue: 1 << 43)
        static let S = BitMaskOptions(rawValue: 1 << 44)
        static let T = BitMaskOptions(rawValue: 1 << 45)
        static let U = BitMaskOptions(rawValue: 1 << 46)
        static let V = BitMaskOptions(rawValue: 1 << 47)
        static let W = BitMaskOptions(rawValue: 1 << 48)
        static let X = BitMaskOptions(rawValue: 1 << 49)
        static let Y = BitMaskOptions(rawValue: 1 << 50)
        static let Z = BitMaskOptions(rawValue: 1 << 51)


        static let bitmaskOptionLookup: [String : BitMaskOptions] = ["a" : BitMaskOptions.a,
                                                                     "b" : BitMaskOptions.b,
                                                                     "c" : BitMaskOptions.c,
                                                                     "d" : BitMaskOptions.d,
                                                                     "e" : BitMaskOptions.e,
                                                                     "f" : BitMaskOptions.f,
                                                                     "g" : BitMaskOptions.g,
                                                                     "h" : BitMaskOptions.h,
                                                                     "i" : BitMaskOptions.i,
                                                                     "j" : BitMaskOptions.j,
                                                                     "k" : BitMaskOptions.k,
                                                                     "l" : BitMaskOptions.l,
                                                                     "m" : BitMaskOptions.m,
                                                                     "n" : BitMaskOptions.n,
                                                                     "o" : BitMaskOptions.o,
                                                                     "p" : BitMaskOptions.p,
                                                                     "q" : BitMaskOptions.q,
                                                                     "r" : BitMaskOptions.r,
                                                                     "s" : BitMaskOptions.s,
                                                                     "t" : BitMaskOptions.t,
                                                                     "u" : BitMaskOptions.u,
                                                                     "v" : BitMaskOptions.v,
                                                                     "w" : BitMaskOptions.w,
                                                                     "x" : BitMaskOptions.x,
                                                                     "y" : BitMaskOptions.y,
                                                                     "z" : BitMaskOptions.z,
                                                                     "A" : BitMaskOptions.A,
                                                                     "B" : BitMaskOptions.B,
                                                                     "C" : BitMaskOptions.C,
                                                                     "D" : BitMaskOptions.D,
                                                                     "E" : BitMaskOptions.E,
                                                                     "F" : BitMaskOptions.F,
                                                                     "G" : BitMaskOptions.G,
                                                                     "H" : BitMaskOptions.H,
                                                                     "I" : BitMaskOptions.I,
                                                                     "J" : BitMaskOptions.J,
                                                                     "K" : BitMaskOptions.K,
                                                                     "L" : BitMaskOptions.L,
                                                                     "M" : BitMaskOptions.M,
                                                                     "N" : BitMaskOptions.N,
                                                                     "O" : BitMaskOptions.O,
                                                                     "P" : BitMaskOptions.P,
                                                                     "Q" : BitMaskOptions.Q,
                                                                     "R" : BitMaskOptions.R,
                                                                     "S" : BitMaskOptions.S,
                                                                     "T" : BitMaskOptions.T,
                                                                     "U" : BitMaskOptions.U,
                                                                     "V" : BitMaskOptions.V,
                                                                     "W" : BitMaskOptions.W,
                                                                     "X" : BitMaskOptions.X,
                                                                     "Y" : BitMaskOptions.Y,
                                                                     "Z" : BitMaskOptions.Z]
    }

    let bitMask: [BitMaskOptions] = J.compactMap { return BitMaskOptions.bitmaskOptionLookup[String($0)] }

    var counter = 0
    S.forEach {
        let maskOption = BitMaskOptions.bitmaskOptionLookup[String($0)]!
        if bitMask.contains(maskOption) { counter = counter + 1 }
    }
    return counter
}