// ===----------------------------------------------------------------------===//
//
// This source file is part of the swift-primitives open source project
//
// Copyright (c) 2024-2026 Coen ten Thije Boonkkamp and the swift-primitives project authors
// Licensed under Apache License v2.0
//
// See LICENSE for license information
//
// ===----------------------------------------------------------------------===//

import Growth_Primitives_Test_Support
import Memory_Alignment_Primitives
import Testing

@Suite("Growth.Policy Tests")
struct GrowthPolicyTests {

    @Test
    func `doubling doubles and floors at one`() {
        let policy = Growth.Policy<UInt8>.doubling
        #expect(policy.newCapacity(from: 4) == Index<UInt8>.Count(8))
        #expect(policy.newCapacity(from: 0) == Index<UInt8>.Count(1))
    }

    @Test
    func `exact returns the request unchanged`() {
        let policy = Growth.Policy<UInt8>.exact
        #expect(policy.newCapacity(from: 16) == Index<UInt8>.Count(16))
    }

    @Test
    func `pageAligned rounds up to the boundary`() throws {
        let policy = try Growth.Policy<UInt8>.pageAligned(Memory.Alignment(16))
        #expect(policy.newCapacity(from: 17) == Index<UInt8>.Count(32))
        #expect(policy.newCapacity(from: 0) == Index<UInt8>.Count(16))
    }
}
