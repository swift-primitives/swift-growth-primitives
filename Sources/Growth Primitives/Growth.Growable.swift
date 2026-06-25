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

extension Growth {
    /// Marks owned memory or region leaves whose backing can grow in place.
    ///
    /// A leaf conforms ``Growth/Growable`` exactly when it can expand its
    /// capacity by relocating or reallocating its backing; a fixed or bounded
    /// leaf is one that does not conform it. The capability is signalled by
    /// conformance presence alone and is orthogonal to the growth *rate*, which
    /// ``Growth/Policy`` carries separately: a growable leaf both conforms
    /// `Growth.Growable` and holds a `Growth.Policy`.
    ///
    /// Declared `~Copyable` so move-only owned leaves can conform.
    public protocol Growable: ~Copyable {}
}
