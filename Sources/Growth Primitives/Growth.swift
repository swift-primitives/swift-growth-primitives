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

/// Capacity-growth strategies for owned, resizable regions and buffers.
///
/// A tier-neutral namespace shared by memory regions and buffer disciplines:
/// ``Growth/Policy`` describes how fast a region's capacity grows, and
/// ``Growth/Growable`` marks the leaves whose backing can grow at all.
public enum Growth {}
