# Killbill::Assets::Ui
`killbill-assets-ui` is a Ruby gem that provides UI assets for Kill Bill, an open-source billing and payments platform. This gem is designed to be integrated into Ruby on Rails applications, providing a seamless way to incorporate Kill Bill's UI components.

## Usage
After installing the gem, you can use the provided UI assets in your Rails application. This can help you quickly build a billing and payments interface using Kill Bill's robust features.

## Installation
Add this line to your application's Gemfile:

```ruby
gem "killbill-assets-ui"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install killbill-assets-ui
```

## Theming / design tokens

This gem owns the **Kill Bill Design System 2026** tokens — the single source of truth for
color and typography across KAUI and all mountable engines. They live in
[`app/assets/stylesheets/assets/tokens.css`](app/assets/stylesheets/assets/tokens.css) as CSS
custom properties on `:root`, loaded first in the `assets/common` bundle (see
`app/assets/stylesheets/assets/common.css`, which requires files explicitly — add new
stylesheets there, in order, after `tokens`).

Token layers (prefix `--kb-`, mirroring the Figma file "Kill Bill | Design System 2026"):

- **Primitives** — raw palette scales: `--kb-neutral-{0..900}`, `--kb-primary-{25..800}`,
  `--kb-error-*`, `--kb-warning-*`, `--kb-success-*`, `--kb-purple-*`.
- **Semantic** — alias the primitives; use these in app styles:
  - actions: `--kb-primary`, `--kb-primary-hover`, `--kb-primary-pressed`, `--kb-on-primary`
  - surfaces: `--kb-surface-container-lowest`, `--kb-surface-container-low`,
    `--kb-surface-container`, `--kb-surface-container-high`
  - text: `--kb-on-surface{-primary,-secondary,-tertiary,-quaternary}`
  - borders: `--kb-outline{-primary,-secondary,-tertiary}`
  - status: `--kb-{error,warning,success}` (+ `-hover`, `-pressed`, `--kb-on-{error,warning,success}`)
  - disabled: `--kb-disable{-primary,-secondary,-tertiary}`
  - tag containers: `--kb-{neutral,primary,error,warning,success,purple}-container` with matching `--kb-on-*-container`
- **Typography** — `--kb-font-family-base` (Inter) and composite text-style tokens usable as
  `font: var(--kb-body-medium);`: `--kb-display-{large,medium,small}`,
  `--kb-headline-{large,medium,small}`, `--kb-title-{large,medium,small}`,
  `--kb-body-{large,medium,small}`, `--kb-label-{large-emphasis,large,medium,small}`.
- **Bootstrap bridge** — `--bs-primary` … `--bs-dark` are redefined on top of the semantic
  tokens so Bootstrap components follow the design system.
- **Legacy** — `--kb-legacy-*` values preserve the old KAUI theme used by `element.css` /
  `datatable.css`. They are not part of the design system; **do not use them in new styles**.

Rules of the road:

- New styles must reference tokens (`color: var(--kb-on-surface-secondary);`), never hex values.
- When the Figma design system changes, edit **only** `tokens.css` and cut a new gem version.
- Keep the two font `@import` lines at the very top of `tokens.css` — it is the first file in
  the concatenated bundle, and browsers drop `@import`s that appear after other rules.

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
