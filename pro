<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Skppr Pro — Browse Without Limits</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300;400;500;600;700&family=Space+Mono:wght@400;700&display=swap');

  :root {
    --bg: #0a0a0f;
    --surface: #13131a;
    --accent: #6c63ff;
    --text: #f0f0f8;
    --muted: #6b6b8a;
    --border: #2a2a3d;
  }

  * { margin: 0; padding: 0; box-sizing: border-box; }

  body {
    font-family: 'Space Grotesk', system-ui, sans-serif;
    background: var(--bg);
    color: var(--text);
    line-height: 1.6;
    min-height: 100vh;
  }

  nav {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 1.25rem 2rem;
    border-bottom: 1px solid var(--border);
  }

  .nav-logo {
    font-family: 'Space Mono', monospace;
    font-size: 1.3rem;
    font-weight: 700;
    letter-spacing: -1px;
    color: var(--text);
    text-decoration: none;
  }
  .nav-logo span { color: var(--accent); }

  .nav-link {
    font-size: 0.875rem;
    color: var(--muted);
    text-decoration: none;
    transition: color 0.15s;
  }
  .nav-link:hover { color: var(--text); }

  .page {
    max-width: 560px;
    margin: 0 auto;
    padding: 4rem 2rem 5rem;
    text-align: center;
  }

  .eyebrow {
    font-size: 0.7rem;
    font-weight: 700;
    letter-spacing: 0.12em;
    text-transform: uppercase;
    color: var(--accent);
    margin-bottom: 1rem;
    display: block;
  }

  h1 {
    font-size: clamp(1.8rem, 4vw, 2.75rem);
    font-weight: 700;
    line-height: 1.15;
    letter-spacing: -1px;
    margin-bottom: 0.75rem;
  }

  h1 em { font-style: normal; color: var(--accent); }

  .sub {
    font-size: 1rem;
    color: var(--muted);
    line-height: 1.65;
    max-width: 400px;
    margin: 0 auto 3rem;
  }

  .features {
    display: flex;
    flex-direction: column;
    gap: 0.75rem;
    margin-bottom: 2.5rem;
    text-align: left;
  }

  .feature {
    display: flex;
    align-items: center;
    gap: 0.75rem;
    background: var(--surface);
    border: 1px solid var(--border);
    border-radius: 12px;
    padding: 1rem 1.25rem;
    font-size: 0.95rem;
  }

  .feature-icon { font-size: 1.25rem; flex-shrink: 0; }

  .feature-text strong { display: block; font-weight: 600; margin-bottom: 0.1rem; }
  .feature-text span { font-size: 0.825rem; color: var(--muted); }

  /* Pricing toggle */
  .toggle-wrap {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 0.75rem;
    margin-bottom: 1.5rem;
    font-size: 0.875rem;
  }

  .toggle-label { color: var(--muted); }
  .toggle-label.active { color: var(--text); font-weight: 600; }

  .save-badge {
    background: rgba(99,255,180,0.15);
    color: #63ffb4;
    font-size: 0.65rem;
    font-weight: 700;
    letter-spacing: 0.08em;
    text-transform: uppercase;
    padding: 0.2rem 0.6rem;
    border-radius: 100px;
  }

  .toggle {
    width: 44px;
    height: 24px;
    background: var(--accent);
    border-radius: 100px;
    border: none;
    cursor: pointer;
    position: relative;
    transition: background 0.15s;
  }

  .toggle::after {
    content: '';
    position: absolute;
    width: 18px;
    height: 18px;
    background: white;
    border-radius: 50%;
    top: 3px;
    left: 3px;
    transition: transform 0.15s;
  }

  .toggle.monthly::after { transform: translateX(20px); }

  .price-card {
    background: var(--surface);
    border: 1.5px solid var(--accent);
    border-radius: 20px;
    padding: 2rem;
    margin-bottom: 1rem;
    position: relative;
  }

  .price-badge {
    position: absolute;
    top: -13px;
    left: 50%;
    transform: translateX(-50%);
    background: var(--accent);
    color: white;
    font-size: 0.65rem;
    font-weight: 700;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    padding: 0.25rem 0.85rem;
    border-radius: 100px;
    white-space: nowrap;
  }

  .price-amount {
    font-family: 'Space Mono', monospace;
    font-size: 3rem;
    font-weight: 700;
    line-height: 1;
    margin-bottom: 0.25rem;
  }

  .price-period { font-size: 0.85rem; color: var(--muted); margin-bottom: 1.75rem; }

  .cta-btn {
    display: block;
    width: 100%;
    background: var(--accent);
    color: white;
    text-decoration: none;
    border: none;
    border-radius: 100px;
    padding: 1rem;
    font-size: 1rem;
    font-weight: 600;
    font-family: 'Space Grotesk', sans-serif;
    cursor: pointer;
    transition: all 0.15s;
    text-align: center;
  }
  .cta-btn:hover { background: #7d75ff; transform: translateY(-1px); }

  footer {
    border-top: 1px solid var(--border);
    padding: 1.5rem 2rem;
    text-align: center;
    font-size: 0.8rem;
    color: var(--muted);
    display: flex;
    justify-content: center;
    gap: 1.5rem;
  }
  footer a { color: var(--muted); text-decoration: none; }
  footer a:hover { color: var(--text); }

  @media (max-width: 600px) {
    .page { padding: 2.5rem 1.25rem 4rem; }
  }
</style>
</head>
<body>

<nav>
  <a class="nav-logo" href="index.html">sk<span>pp</span>r</a>
  <a class="nav-link" href="index.html">Get Listed →</a>
</nav>

<div class="page">
  <span class="eyebrow">Skppr Pro</span>
  <h1>Browse <em>without limits.</em></h1>
  <p class="sub">Upgrade to Pro and get the full Skppr experience — no caps, no interruptions, just discovery.</p>

  <div class="features">
    <div class="feature">
      <div class="feature-icon">∞</div>
      <div class="feature-text">
        <strong>Unlimited Skips</strong>
        <span>No daily cap. Skip as much as you want, whenever you want.</span>
      </div>
    </div>
    <div class="feature">
      <div class="feature-icon">🚫</div>
      <div class="feature-text">
        <strong>No Sponsored Cards</strong>
        <span>Pure discovery. No ads, no sponsored slots in your feed.</span>
      </div>
    </div>
    <div class="feature">
      <div class="feature-icon">🔖</div>
      <div class="feature-text">
        <strong>Save Sites</strong>
        <span>Bookmark anything you want to revisit later.</span>
      </div>
    </div>
    <div class="feature">
      <div class="feature-icon">🎛️</div>
      <div class="feature-text">
        <strong>Category Filters</strong>
        <span>Skip only what you care about. Lock in your interests.</span>
      </div>
    </div>
  </div>

  <!-- Pricing toggle -->
  <div class="toggle-wrap">
    <span class="toggle-label" id="label-annual">Annual <span class="save-badge">Save 20%</span></span>
    <button class="toggle" id="toggleBtn" onclick="switchPlan()"></button>
    <span class="toggle-label monthly active" id="label-monthly">Monthly</span>
  </div>

  <div class="price-card">
    <div class="price-badge">Most Popular</div>
    <div class="price-amount" id="priceAmount">$3<span style="font-size:1.5rem">/mo</span></div>
    <div class="price-period" id="pricePeriod">Billed monthly · cancel anytime</div>
    <a href="https://buy.stripe.com/7sY8wO45jaL98xQ42Tgw000" class="cta-btn" id="proBtn">Get Skppr Pro →</a>
  </div>
</div>

<footer>
  <span>© 2026 Skppr</span>
  <a href="mailto:scott@blackhookgroup.com">Contact</a>
  <a href="https://www.freeprivacypolicy.com/live/3c5651d1-63eb-43f7-911c-e551043bd4cb" target="_blank">Privacy Policy</a>
</footer>

<script>
  var isMonthly = true;
  var monthlyLink = 'https://buy.stripe.com/7sY8wO45jaL98xQ42Tgw000';
  var annualLink = 'https://buy.stripe.com/4gM14mfO1bPd5lEeHxgw004';

  function switchPlan() {
    isMonthly = !isMonthly;
    var btn = document.getElementById('toggleBtn');
    var amount = document.getElementById('priceAmount');
    var period = document.getElementById('pricePeriod');
    var proBtn = document.getElementById('proBtn');
    var labelMonthly = document.getElementById('label-monthly');
    var labelAnnual = document.getElementById('label-annual');

    if (isMonthly) {
      btn.classList.add('monthly');
      amount.innerHTML = '$3<span style="font-size:1.5rem">/mo</span>';
      period.textContent = 'Billed monthly · cancel anytime';
      proBtn.href = monthlyLink;
      labelMonthly.classList.add('active');
      labelAnnual.classList.remove('active');
    } else {
      btn.classList.remove('monthly');
      amount.innerHTML = '$29<span style="font-size:1.5rem">/yr</span>';
      period.textContent = 'Billed annually · cancel anytime';
      proBtn.href = annualLink;
      labelAnnual.classList.add('active');
      labelMonthly.classList.remove('active');
    }
  }
</script>
</body>
</html>
