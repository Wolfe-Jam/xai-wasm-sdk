# xai-wasm-sdk

**WASM SDK for FAF Scoring - xAI Edition**

## Contents

```
xai-wasm-sdk/
├── README.md              # This file
├── xai-faf-core           # Rust MCP binary (650KB)
├── wasm-sdk/
│   ├── xai_wasm_sdk.js    # WASM glue code
│   ├── xai_wasm_sdk_bg.wasm  # WASM binary (207KB)
│   ├── xai_wasm_sdk.d.ts  # TypeScript definitions
│   └── browser-demo.html  # Interactive demo
├── project.faf            # Sample project DNA
└── demo.sh                # One-click demo
```

## Dual Scoring System

| Engine | Purpose | Weights |
|--------|---------|---------|
| **Wolfejam Score** | Official FAF Standard | Slot-based (filled/total) |
| **Elon Weights** | xAI Optimized | `[0.40, 0.35, 0.15, 0.10]` |

### Elon Weights Breakdown:
- **40%** Completeness - Core project DNA coverage
- **35%** Clarity - AI instruction quality
- **15%** Structure - File organization
- **10%** Metadata - Tags and versioning

### FAF Tiers:
- 100% = Trophy
- 99%+ = Gold
- 95%+ = Silver
- 85%+ = Bronze
- 70%+ = Green
- 55%+ = Yellow
- <55% = Red

## Quick Start

```bash
# Run browser demo
cd wasm-sdk
python3 -m http.server 8888
# Open http://localhost:8888/browser-demo.html

# Or run the MCP server
./xai-faf-core
```

## Performance

- **WASM SDK**: <5ms parse + score
- **MCP Server**: <10ms context switching
- **WASM Size**: 212KB
- **Binary Size**: 650KB (Rust)

## Integration

### Browser/Edge
```javascript
import init, { FAF } from './xai_wasm_sdk.js';
await init();
const faf = new FAF(yamlContent);

// Wolfejam Score (FAF Standard)
console.log(faf.mk3_score, faf.mk3_tier);

// Elon Weights (xAI)
console.log(faf.weighted_score, faf.tier);
```

### Grok Native (MCP)
```json
{
  "mcpServers": {
    "faf": {
      "command": "./xai-faf-core"
    }
  }
}
```

## Visibility Flag

Elon Weights are controlled by a single flag in `browser-demo.html`:

```javascript
// ELON WEIGHTS VISIBILITY FLAG
// Set to true ONLY with agreement from Elon
const SHOW_ELON_WEIGHTS = true;  // xAI version
```

FAF public version has this set to `false` by default.

---

**FAF - Foundational AI-context Format**
*30 seconds replaces 20 minutes of questions*

**Private - FAF Foundation IP**
