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
/// Hoisted from `Buffer.Growth` in the MSB tower W3 re-layering: growth is a
/// tier-neutral concern consumed DOWNWARD by Memory-tier regions
/// (`Memory.Unbounded`) and Buffer-tier disciplines alike — a Buffer-namespaced
/// policy forced an upward dependency on the Memory tier and a phantom
/// substrate parameter under the `Buffer<S>` namespace reparameterization.
public enum Growth {}
