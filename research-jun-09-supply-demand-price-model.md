# Oil Supply/Demand Balance and US Fuel Price Model — Rebuilt from a 9-June-2026 Anchor
## Forecast horizon: June 2026 – March 2027 | Supersedes the 28-April model

---

## Part 0 — Audit: how the April 28 model did

Grading the prior model against five weeks of realized data, prediction by prediction:

| Prediction (Apr 28 model) | Actual (May 1 – Jun 9) | Verdict |
|---|---|---|
| Brent May avg: base **$108** (prob-wtd $115) | **$107** (EIA STEO) | ✅ Base case nailed it; the 45% pessimistic weight made the weighted call $8 too high |
| Brent June: base $99 | June MTD avg ~$94.7; Jun 9 settle $91.45 | ⚠️ Tracking below base |
| Hormuz May flows: base 5 mb/d / 22 vessels/day (pess. 4 mb/d, 18/day) | ~2.7-3 mb/d, ~6 vessels/day | ❌ Flows tracked **below the pessimistic case** |
| National gasoline peak: $4.27 week of May 25 | **$4.56 on May 21** | ❌ Undershot 29¢; timing right, level wrong |
| California: $6.35 (May 25) → $6.45 (Jun 29) | Peak **$6.16 (May 7)**, $5.84 by Jun 9 | ❌ Overshot; CA peaked early and broke back under $6 |
| National diesel May peak $5.80 | ~$5.55-5.64 peak | ⚠️ Overshot ~20-25¢ |
| SPR May 31: 387M (at 1.43 mb/d) | **357.1M (May 29)**; May pace 1.27 mb/d | ❌ Level 30M too high — the anchor was already low and April drawdown faster |
| Fed: hold through Aug, first cut Sept | Warsh chairs; market prices **~70% odds of a Dec HIKE** | ❌❌ Directionally wrong — the policy regime flipped |
| April CPI 3.7% headline | 3.8% | ✅ |
| JPM May 9-30 window → non-linear spike risk (pess.) | Peak $109.26; no spike; Cushing −6 wks to 22.4M | ✅ Base "no national crunch" right; regional stress real |
| Recession: Q2 base prob 35% | GDPNow Q2 +3.3%; jobs +172K | ✅ No recession — but the model under-called *inflation* persistence |
| US shale response "+0-50 kbpd by Q1'27" | Production 13.80 mb/d (Jun 5 wk); rigs +19 in 6 wks (431 oil, +24) | ❌ Shale is responding at $90-100 after all |

**The thesis-level error and the lesson:** the April model mapped *flows* to *price* too directly. Flows realized at or below the pessimistic branch — and price realized at the optimistic/base boundary — because four buffers were under-weighted: (1) demand destruction at ~2x the modeled elasticity (April global demand −4.3 mb/d, JPM; Asia seaborne imports −7.3 mb/d Feb→Apr, IEA); (2) the stock flood (164 mb IEA collective release by May 8; SPR −60M from anchor); (3) record non-Mideast supply (Americas +1.5 mb/d, US weekly prints 13.7-13.8); (4) bypass routes scaling to 7.8 mb/d, plus ~2 mb/d of dark-fleet exits (transponders off, US Navy quietly coordinating — JPM Jun 4). **Sum of buffers ≈ 10+ mb/d against ~12.8 mb/d of losses (JPMorgan puts peak removal near 14 mb/d; IEA counts >1 billion barrels cumulative; Atlantic Basin exports +3.5 mb/d since February).** The new model prices *the deal*, with flows as the slow variable — and inherits a market that has already spent the buffers: SPR halfway gone, OECD stocks −146 mb in April alone, Cushing near floor. If the pessimistic branch fires now, the shock absorbers are thinner than at any point since February.

---

## TL;DR (new model)

- **The market spent May pricing a peace nobody signed.** Brent's −19% May (worst month since COVID) happened with Hormuz at ~5% traffic, Iranian exports at a six-year low, and the SPR draining 1.1-1.3 mb/d. The $91.45 June 9 settle embeds roughly a **$15-20 "peace discount"** vs. flow-consistent pricing (EIA STEO, assuming continued closure, has June-July at ~$105).
- **Scenario architecture now keys on the MOU, not the strait**: (A) **Signed & holds — 25%**: Brent fades $90 → high-$70s by Q1'27 as demining (2-6 months) and proportional blockade relief slowly restore flows. (B) **Stalemate grind — 45% (base)**: no signature near-term; ceasefire punctuated by kinetic episodes (June 9 strikes are the template); toll regime + carve-outs + bypass creep flows up; Brent oscillates $88-100, averaging ~$92 H2. (C) **Re-escalation — 30%**: the June 9 strike cycle (or the next one) breaks the ceasefire; Iran resumes shipping attacks / hits Gulf infrastructure; Brent $115-125 within weeks, **with materially less SPR ammunition than March** — recession probability >55%.
- **Probability-weighted Brent: ~$96 Q3 2026, ~$90 Q4, ~$84 Q1 2027.** Retail gasoline base case: $4.16 today → $3.95 around July 4 → $3.70 Labor Day → $3.50 December. California $5.84 → low-$5.50s by fall (LCFS July 1 update is the wildcard).
- **The Fed has flipped from the April model's easing path to a tightening-risk path**: Warsh debuts June 16-17; December hike priced at ~70% after payrolls +172K; UMich 5-10yr expectations at 3.9% sit at the un-anchoring threshold. Energy-led disinflation from the May crude collapse cuts headline CPI from ~4.2% (May, prints June 10) toward ~3.3% by September *in the base case* — which is what keeps the hike from happening. In the re-escalation case, headline re-accelerates >5% into Q4 and the first hike comes Q1 2027.

---

## 1. Anchor conditions, June 9, 2026

- **Prices**: Brent $91.45 / WTI $88.20 (settles; US strikes on Iranian air defenses came at 5:00 PM ET, after settlement; June 10 electronic +3%). Dated Brent premium ~$2-3 (normalized from record $35-36 mid-April). Brent-WTI spread ~$2.3 (vs $11.3 Apr 28; briefly inverted May 18-19).
- **Inventories**: US commercial crude 426.5M (−30.7M in 5 weeks; ~3% below 5-yr); gasoline 215.1M (−5% vs 5-yr); distillate 102.1M (~13% below; never breached 100M); Cushing 22.4M (May 29) vs ~20M floor; refinery utilization 95.3%.
- **SPR: 349.2M** (Jun 5 week; 11 straight draws; −60M from the Apr 10 409M). EIA STEO projects 330.5M end-Q2 → **243.5M in Q3**. Treat ~250M as the effective operational floor: **the buffer is half-spent.**
- **Flows**: Hormuz ~2.7-3 mb/d vs ~20 pre-war (~6 vessels/day vs ~100); bypass routes 7.8 mb/d; Gulf exports ~10.5 mb/d (−14 vs Feb); May shut-ins 11.3 mb/d (STEO). Iran exports ~0.2-0.3 mb/d. PGSA toll regime live ($1-2M/transit, yuan).
- **Macro**: April CPI 3.8%/core 2.8%; May CPI consensus 4.2% (June 10); PPI +6.0% y/y; payrolls +172K; GDPNow Q2 +3.3%; funds rate 3.50-3.75%; Warsh FOMC June 16-17; Dec hike ~70% priced; UMich 44.8 (record low), 5-10yr expectations 3.9%.
- **Politics/diplomacy**: 60-day MOU agreed-but-unsigned (blockade-sequencing stalemate); blockade active (134 redirected/7 disabled by Jun 8); House war-powers passage 215-208 (veto certain); Trump approval ~36%.

## 2. Scenario architecture (probabilities re-based June 9)

| Scenario | Prob. | Trigger path | Hormuz path | Brent Q3 avg | Brent Q4 avg | Q1'27 |
|---|---|---|---|---|---|---|
| A. Signed & holds | 25% | Trump signs within ~4 weeks; demining starts; proportional blockade relief | 6→25 vessels/day by Sep; 60-70% flow by Dec; normal H2'27 | $84 | $75 | $71 |
| **B. Stalemate grind (base)** | **45%** | No signature; ceasefire + periodic strikes (Jun 9 template); tolls/carve-outs persist | 3 mb/d → 5-6 by Sep (carve-out creep); 8-10 by Mar'27 | **$92** | **$87** | **$82** |
| C. Re-escalation | 30% | Strike cycle breaks ceasefire; shipping attacks resume; possible Gulf infrastructure hits | re-closes toward 1-2 mb/d; mining round 3 | $118 | $108 | $100 |

Why 30% on re-escalation (up from the April framing's realized-risk): tonight's strikes are the third US-Iran kinetic exchange in 12 days (Kuwait missile May 28, Kuwait airport drone June 3, Apache/strikes June 8-9); Iran's "heavy response" pledge is live; and the MOU's sequencing gap is structural, not cosmetic — the US is asking Iran to surrender its only leverage (the strait) before the blockade lifts. Why not higher: both principals keep stepping back at the brink (May 25, June 8), Iran's economy is collapsing (−6.1% GDP, 69% inflation), and the Israel-Iran halt held even through tonight's US strikes (so far).

**Brent monthly average forecast ($/bbl):**

| Month | A (25%) | **B (45%)** | C (30%) | Prob-weighted |
|---|---|---|---|---|
| Jun 2026 | $93 | **$95** | $99 | $96 |
| Jul | $88 | **$94** | $115 | $99 |
| Aug | $84 | **$92** | $122 | $99 |
| Sep | $80 | **$90** | $118 | $96 |
| Oct | $77 | **$88** | $112 | $92 |
| Nov | $75 | **$87** | $108 | $90 |
| Dec | $73 | **$86** | $105 | $88 |
| Jan 2027 | $72 | **$84** | $102 | $86 |
| Feb | $71 | **$82** | $100 | $85 |
| Mar | $70 | **$80** | $96 | $82 |

Cross-checks: EIA STEO base ($105 Jun-Jul → $89 Q4, $95 FY26) sits between my B and C — it assumes closure with no peace discount. JPMorgan ($96 FY26, $75 '27) ≈ my A/B blend. Goldman's "+1 month closure → $120 Q3" ≈ my C. The market forward (~$91 spot, compressed backwardation) is pricing ~A at 40%+ — I think that over-weights an unsigned deal.

## 3. Month-by-month balance (base case B, mb/d)

Global demand uses EIA June STEO (2026 −1.1 y/y, ≈102.9 avg) with destruction easing as prices fade; supply rebuilds per STEO "flows resume slowly 3Q26."

| Month | Demand | Supply | of which Gulf recovery | Stock release (SPR+IEA) | Net balance | Notes |
|---|---|---|---|---|---|---|
| Jun '26 | 101.8 | 97.6 | +0.5 vs May | 1.9 | **−2.3** | Release window peak |
| Jul | 102.6 | 98.8 | +1.2 | 1.6 | −2.2 | IEA gov tranche ends |
| Aug | 102.8 | 100.0 | +1.2 | 1.0 | −1.8 | SPR program tapers |
| Sep | 102.4 | 101.2 | +1.2 | 0.6 | −0.6 | Demining if MOU signed |
| Oct | 102.9 | 102.4 | +1.0 | 0.2 | −0.3 | |
| Nov | 103.3 | 103.2 | +0.8 | 0.0 | −0.1 | Approaching balance |
| Dec | 103.9 | 104.0 | +0.8 | 0.0 | +0.1 | First build in 10 months |
| Q1 '27 | 103.4 | 104.6 | +0.5/mo | 0.0 | +1.2 | Restocking bid begins |

Implication: even the base case draws global stocks another ~200M bbl through October on top of ~400M+ already gone — which is why the price floor stays high ($80s) even as the war premium fades, and why a Q1'27 restocking bid (commercial + SPR refill) caps the downside near $75-80.

## 4. SPR trajectory

| Date | Base case | Notes |
|---|---|---|
| Jun 5 (actual) | **349.2M** | 11th straight draw |
| End-Jun | ~340M | STEO: 330.5 end-Q2 |
| End-Jul | ~325M | IEA 210mb gov tranche completes |
| End-Sep | ~310M | Release tapers as price < $95 |
| End-Dec | ~305M | No refill while backwardated |
| Mar '27 | ~310M | First refill RFPs if Brent <$80 |

STEO's own Q3 projection (243.5M) assumes release-at-pace continues; I taper it on price. **Either way: a second-leg shock in Q4 meets an SPR at 250-310M vs 409M in April — the policy buffer for scenario C is roughly half what it was.** This asymmetry is the model's most important structural feature.

## 5. US retail fuel paths (base case)

**Gasoline ($/gal, AAA national / California):** rockets-and-feathers applied (decline pass-through ~55%/4wks); crude path B; summer driving demand normal-minus (demand prints 8.6-9.3 mb/d).

| Week of | National | California |
|---|---|---|
| Jun 9 (actual) | $4.16 | $5.84 |
| Jun 22 | $4.05 | $5.72 |
| Jul 6 | $3.95 | $5.66* |
| Jul 20 | $3.90 | $5.70* |
| Aug 17 | $3.78 | $5.60 |
| Sep 14 | $3.70 | $5.52 |
| Oct 12 | $3.62 | $5.45 |
| Nov 9 | $3.55 | $5.38 |
| Dec 7 | $3.50 | $5.32 |
| Feb '27 | $3.42 | $5.25 |
| Mar '27 | $3.40 | $5.22 |

*CA July includes the **LCFS July 1 update** (+up to $0.65/gal per UPenn estimate if implemented unmitigated; base case assumes partial offset/phase-in adds ~10-15¢; if suspended, CA tracks $5.50 by August). Scenario C: national re-peaks $4.45-4.65 in late summer; CA re-tests $6.15-6.40.

**Diesel ($/gal national):** $5.21 now → $5.05 (Jul) → $4.90 (Aug) → $4.82 (Sep) → $4.75 (Oct-Nov, harvest+heating support) → $4.70 (Dec) → $4.55 (Mar'27). CA diesel $6.94 → ~$6.50 by year-end. Distillate stocks ~13% below 5-yr keep diesel's floor sticky; scenario C takes national diesel back through $5.75.

**NE heating oil (residential, $/gal):** base Oct $4.45 → Jan peak $4.72 → Mar $4.45. Scenario C: Jan $5.90. (Materially below the April model's $5.15 base/$6.40 stress — the crude collapse passed through before the heating season, and PADD 1 distillate rebuilt modestly.)

## 6. CPI / Fed / GDP

**CPI trajectory (YoY, base case):** May 4.2% (peak; prints Jun 10) → Jun 4.0% → Jul 3.7% → Aug 3.5% → Sep 3.3% → Oct 3.3% (food channel offsets energy fade) → Dec 3.2% → Mar'27 2.9%. Core: 2.8% → 3.0-3.1% plateau (Jul-Oct, freight+fares pass-through) → 2.8% by Mar'27. Food-at-home: 2.9% now → 3.4% (Sep) → 3.8-4.0% (Dec-Feb peak) — softer than the April model's 5%+ peak because urea has rolled over (−5% m/m May) and planting outpaced the nitrogen scare; USDA's own revision (+2.4→+3.2%) validates the channel's direction but not the prior amplitude. Scenario C: headline re-peaks 5.3-5.8% in Q4; food-at-home >5% Q1'27.

**Fed (the regime flipped):** Base case — Warsh holds at 3.50-3.75% through 2026; no cuts (April model's September cut is dead); the priced December hike *doesn't* happen because energy disinflation pulls headline to ~3.3% by the October meeting. Hike triggers to monitor: May/June core CPI ≥0.4% m/m, UMich 5-10yr ≥4.0%, or scenario C. In C: +25bp in Q4'26 or Q1'27 into a slowing economy — the 1979 sequence.

**GDP/recession:** Q2 tracking +3.3% (GDPNow) — the April model's +0.6% was far too low; the stock-release flood and resilient consumer carried it. Base case: 2026 +1.8%, no recession; quarterly recession probability 25% (Q3), 25% (Q4), drifting down. Scenario C: 60%+ within 2 quarters, stagflationary (hike risk + $120 crude + sentiment at records lows).

## 7. Hormuz / flows (base case B)

| Month | Vessels/day | Oil flow (mb/d) | Constraint |
|---|---|---|---|
| Jun '26 | ~6 | 3.0 | Toll regime + carve-outs only |
| Jul | 8 | 3.5 | Stalemate; episodic strikes |
| Aug | 10 | 4.2 | Carve-out creep (India/Iraq/Pak) |
| Sep | 14 | 5.5 | Partial demining if MOU progress |
| Oct | 18 | 6.5 | Insurance still 3-5x pre-war |
| Dec | 25 | 8.5 | Bypass (9-10 mb/d) does heavy lifting |
| Mar '27 | 35 | 10.5 | Full normal needs the signed deal |

Note the structural shift vs. the April model: **the bypass network, not the strait, is now the main supply variable.** Basra–Haditha under construction (2.5 mb/d design), UAE's second Fujairah line ~50% complete (2027), Kirkuk-Ceyhan targeting 600 kb/d. Every month of stalemate makes the post-war map less Hormuz-dependent — and lowers the marginal price impact of the strait itself.

## 8. Key risks to this model

1. **Tonight's strikes are unpriced.** The June 9 settle predates the 5 PM CENTCOM operation. If Iran's "heavy response" is more than symbolic, scenario C's July ($115) arrives in days, not weeks. Conversely, a contained exchange that pushes both sides back to the table accelerates scenario A.
2. **The May CPI print (June 10, 8:30 ET)** lands hours after publication; consensus 4.2%. A 4.5%+ surprise re-prices the Fed and the dollar, pressuring crude lower near-term but raising the stagflation tail.
3. **Warsh's June 16-17 debut** — a hawkish surprise (dissent pattern, SEP shift) tightens financial conditions into an inventory-deficit market.
4. **SPR exhaustion is the under-priced asymmetry**: every week of release at −8M bbl shrinks the C-scenario buffer. By September the US enters any re-escalation with ~310M (vs 409M in April).
5. **The model's own May lesson cuts both ways**: demand destruction and stock releases muted the upside once; with stocks half-spent and demand already destroyed, the *same* flow shock now has less standing between it and price.
6. **OPEC demand vs the contraction camp**: OPEC's May MOMR still shows 2026 growth (+1.17 to +1.38 mb/d — sources conflict on whether it trimmed) while IEA (−0.42) and EIA (−1.1) both show contraction — a 2.5-3.5 mb/d spread, the widest of the cycle. This model leans EIA; if OPEC is right, every balance row above is ~1.5 mb/d tighter and the base case is $10 too low.
7. **California LCFS July 1** — binary ~$0.15-0.65/gal swing on the CA path.
8. Forecast reliability decays past Q4 2026; 90% CI for Q1'27 Brent: $68-$118.
