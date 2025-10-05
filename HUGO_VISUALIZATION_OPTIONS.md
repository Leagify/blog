# Data Visualization Options for Hugo

Hugo has built-in support for data files and can render visualizations using CSV data. Here are the easiest options:

## 1. Hugo Data Files + Chart.js (Recommended)

Hugo can read CSVs from the `data/` directory and pass them to JavaScript charting libraries:

```markdown
{{< chart >}}
{{ $data := .Site.Data.your_csv_file }}
<!-- Pass $data to Chart.js or similar -->
{{< /chart >}}
```

### Setup Steps:
1. Place your CSV files in Hugo's `data/` directory
2. Create a shortcode in `layouts/shortcodes/chart.html`
3. Include Chart.js in your template
4. Reference the data using Hugo's `.Site.Data` variable

## 2. Hugo Shortcodes + D3.js/Chart.js

Create a shortcode that:
- Reads the CSV from Hugo's data directory
- Generates HTML/SVG markup
- Embeds Chart.js, Plotly, or D3.js for interactive charts

### Example Shortcode Structure:
```html
<!-- layouts/shortcodes/prospect-chart.html -->
{{ $data := .Site.Data.prospects }}
<div id="chart"></div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
  // Render chart using $data
</script>
```

## 3. Observable Plot (Easiest for Complex Visualizations)

Observable Plot is specifically designed for data journalism and works great with static sites:

```html
<script type="module">
import * as Plot from "https://cdn.jsdelivr.net/npm/@observableplot/plot@latest/+esm";
// Load your CSV and render
const data = await d3.csv("/data/prospects.csv");
const plot = Plot.plot({
  marks: [
    Plot.dot(data, {x: "rank", y: "points", fill: "school"})
  ]
});
document.querySelector("#chart").append(plot);
</script>
<div id="chart"></div>
```

### Benefits:
- Declarative syntax
- Built for exploratory data analysis
- Great defaults for statistical charts
- Works with CSV, JSON, or inline data

## 4. Vega-Lite Embed

Declarative JSON spec + your CSV URL:

```html
<script src="https://cdn.jsdelivr.net/npm/vega-embed@6"></script>
<div id="vis"></div>
<script>
  vegaEmbed('#vis', {
    data: { url: "/data/prospects.csv" },
    mark: "bar",
    encoding: {
      x: {field: "rank", type: "quantitative"},
      y: {field: "points", type: "quantitative"}
    }
  });
</script>
```

### Benefits:
- Pure JSON configuration
- No programming required
- Wide variety of chart types
- Interactive by default

## Common Visualization Ideas for NFL Prospect Data

### Rankings Over Time
- Line chart showing how prospects' rankings change year-over-year
- Area chart showing draft class strength by position

### Regional Distributions
- Choropleth map of prospects by state/region
- Bar chart of prospects by conference

### School Comparisons
- Grouped bar chart comparing schools' top prospects
- Scatter plot of school vs. average prospect points

### Draft Analysis
- Histogram of projected draft positions
- Box plot of prospect points by position group

## Next Steps

1. Determine which visualization type best fits your content
2. Copy your CSV files to Hugo's `data/` directory
3. Choose a visualization library based on complexity needs
4. Create a shortcode or page template to render the visualization
5. Test with sample data before deploying

## Resources

- [Hugo Data Templates](https://gohugo.io/templates/data-templates/)
- [Chart.js Documentation](https://www.chartjs.org/)
- [Observable Plot](https://observablehq.com/plot/)
- [Vega-Lite Examples](https://vega.github.io/vega-lite/examples/)
