# CLAUDE.md - xAI WASM SDK

## Project: xai-wasm-sdk
**207KB of Championship-Grade Scoring**

### Mission
Dual-scoring WASM module for browser/edge FAF validation. Native Rust performance, runs anywhere JavaScript runs.

### Architecture
```
xai-wasm-sdk/
├── wasm-sdk/
│   ├── src/
│   │   ├── lib.rs         # WASM entry points
│   │   ├── scorer.rs      # Dual scoring (Elon Weights)
│   │   ├── parser.rs      # YAML parsing
│   │   └── types.rs       # FAF type definitions
│   ├── pkg/               # Built WASM output
│   │   ├── xai_wasm_sdk_bg.wasm  # 207KB binary
│   │   ├── xai_wasm_sdk.js       # 22KB JS glue
│   │   └── xai_wasm_sdk.d.ts     # TypeScript defs
│   ├── examples/
│   │   └── browser.html   # FAF version demo
│   ├── wjttc/             # 64 combined tests
│   │   ├── run-all.sh     # WJTTC runner
│   │   ├── WJTTC-STANDARD.md
│   │   └── TESTING-STRATEGY.md
│   └── Cargo.toml
├── project.faf            # Project DNA (85%)
├── XAI-STRATEGIC-ADVANTAGE.md  # Business case
└── CLAUDE.md              # This file
```

### Dual Scoring System

**Wolfejam Score (Mk3)** - Slot-based, public-facing:
```
21 slots across 4 dimensions → percentage score → tier
```

**Elon Weights** - xAI-optimized priorities:
```
[0.40, 0.35, 0.15, 0.10]
 40% Completeness - Core project DNA
 35% Clarity      - AI instruction quality
 15% Structure    - File organization
 10% Metadata     - Tags and versioning
```

### Performance
| Metric | Target | Actual |
|--------|--------|--------|
| Parse + Score | <10ms | **4.70ms** |
| WASM Size | <300KB | **207KB** |
| Combined Tests | 50+ | **64** |

### WJTTC Test Suite
Partner Stack: `cargo test` + WJTTC delivery validation

```bash
# Run full suite
cd wasm-sdk && ./wjttc/run-all.sh

# Expected output:
# Partner Tests:     30 passed
# WJTTC Tests:       34 passed
# COMBINED TOTAL:    64 passed
# STATUS: CHAMPIONSHIP GRADE
```

### Build Commands
```bash
# Build WASM
cd wasm-sdk && wasm-pack build --target web

# Run Rust tests
cargo test

# Lint check
cargo clippy

# Full WJTTC suite
./wjttc/run-all.sh
```

### JavaScript API
```javascript
import init, { FAF } from './xai_wasm_sdk.js';

await init();
const faf = new FAF(yamlContent);

// Wolfejam Score (public)
console.log(faf.mk3_score);   // 85.0
console.log(faf.mk3_tier);    // "Bronze"

// Elon Weights (xAI-optimized)
console.log(faf.weighted_score);  // 87.2
console.log(faf.tier);            // "🥉"

// Dimensions
console.log(faf.completeness);    // 90.0
console.log(faf.clarity);         // 85.0
console.log(faf.structure);       // 80.0
console.log(faf.metadata);        // 75.0
```

### Tier System
| Tier | Threshold | Emoji |
|------|-----------|-------|
| Trophy | 100% | 🏆 |
| Gold | 99%+ | 🥇 |
| Silver | 95%+ | 🥈 |
| Bronze | 85%+ | 🥉 |
| Green | 70%+ | 💚 |
| Yellow | 55%+ | 💛 |
| Red | <55% | 🤍 |

### Integration Paths

**Browser (direct)**:
```html
<script type="module">
  import init, { FAF } from './pkg/faf_wasm_sdk.js';
  // ...
</script>
```

**Elite Palace**: Connects via WebSocket to live scoring display

**Grok Native**: WASM embedded for instant project understanding

### Quality Gates
- Clippy: Zero warnings
- Cargo tests: 30/30 passing
- WJTTC: 34/34 passing
- Combined: 64/64 passing

### Commit Format
```
type: concise description

- specific change

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>
```

Types: `fix:` `feat:` `docs:` `refactor:` `chore:` `test:`

---

**STATUS: CHAMPIONSHIP GRADE**

*WJTTC v1.0.0 Certified*
*64 tests passing*
*4.70ms scoring*
