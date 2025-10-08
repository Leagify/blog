# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Hugo static site for Leagify (https://leagify.github.io/), a platform for creating fantasy leagues. The site primarily features NFL Draft prospect analysis with embedded Tableau visualizations and informational content about the Leagify platform.

## Architecture

**Dual Repository Setup**: This repo contains Hugo source code. The generated `public/` directory is a git submodule pointing to https://github.com/Leagify/leagify.github.io.git (the GitHub Pages deployment repository).

**Hugo Theme**: Uses the Ananke theme (https://github.com/budparr/gohugo-theme-ananke.git) as a git submodule in `themes/ananke/`.

**Content Structure**:
- `content/charts/` - Draft prospect analysis posts with embedded Tableau visualizations
- `content/posts/` - Blog posts
- `content/games/` - Game-related content
- `layouts/shortcodes/rawhtml.html` - Custom shortcode to embed raw HTML (used for Tableau embed codes)
- `layouts/_default/single.html` - Override of theme's single post template

**Configuration**: `config.toml` sets baseURL to "https://leagify.github.io/", uses Ananke theme, enables Google Analytics (UA-108142998-1), and configures SectionPagesMenu for navigation.

## Common Commands

**GitHub Codespaces development** (recommended):
```bash
hugodev
```
This alias is automatically configured during container setup and handles the Codespaces URL forwarding.

**Local development**:
```bash
hugo server
```

**GitPod environment** (legacy - requires special baseURL handling):
```bash
hugo server --baseUrl $(gp url 1313) --appendPort=false
```
Port 1313 must be exposed in GitPod.

**Build site**:
```bash
hugo
```
Generated files go to `public/` directory (which is a git submodule).

**Deploy to GitHub Pages**:
After running `hugo`, cd into `public/` and commit/push changes to the leagify.github.io repository.

## Content Creation

**New draft prospect chart post**:
- Create markdown file in `content/charts/`
- Use front matter: title, date, tags (optional), featured_image (optional), description
- Embed Tableau visualizations using `{{< rawhtml >}}` shortcode with Tableau's embed code
- Follow the ranking methodology documented in existing chart posts (35 points for rank 1-10, 30 for 11-25, etc.)

**Front matter format** (TOML style with +++):
```toml
+++
title = "Post Title"
date = 2025-03-01T04:56:11Z
tags = []
featured_image = ""
description = "Description"
+++
```

## Data Visualization

### Observable Plot (Recommended)

Use the `obsplot` shortcode to create interactive charts from CSV files:

```markdown
{{< obsplot csv="/data/sample/file.csv" type="bar" x="FieldName" y="OtherField" color="Category" title="Chart Title" >}}
```

**Parameters:**
- `csv` - Path to CSV file (relative to `/static/`)
- `type` - Chart type: `bar`, `barVertical`, `dot`, `line`
- `x` - Field name for x-axis
- `y` - Field name for y-axis
- `color` - (optional) Field name for color encoding
- `title` - (optional) Chart title
- `width` - (optional) Chart width in pixels (default: 800)
- `height` - (optional) Chart height in pixels (default: 400)

**CSV File Location:** Place CSV files in `static/data/` directory. They'll be accessible at `/data/` URL path.

**Example:** See `content/charts/observable-plot-test.md` for working examples with sample data.

### Tableau Public (Legacy)

Older charts use Tableau Public embedded visualizations. The `rawhtml` shortcode allows embedding the full Tableau JavaScript initialization code. See `HUGO_VISUALIZATION_OPTIONS.md` for more details.

## Theme Customization

Custom layouts in `layouts/` override the Ananke theme defaults. The site uses Tachyons CSS (from the theme) for styling.
