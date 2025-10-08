+++
title = "{{ replace .Name "-" " " | title }}"
date = {{ .Date }}
tags = ["draft", "charts", "prospects"]
featured_image = ""
description = "Interactive charts showing NFL Draft prospect data by school, state, conference, and position"
+++

Interactive charts visualizing NFL Draft prospect data. Hover over chart segments to see detailed information.

<!--more-->

## Player Value by School

This chart shows individual players as segments within each school's bar. Each segment represents one player, and you can hover to see player details.

{{< obsplot-stacked csv="/data/DATE-HERE/DATE-HERE-ranks.csv" groupBy="School" value="Points" color="Conference" title="Player Value by School" height="3000" >}}

## Player Value by State

This chart shows states with individual players as segments, colored by conference. Hover to see player name and school.

{{< obsplot-stacked csv="/data/DATE-HERE/DATE-HERE-ranks.csv" groupBy="State" value="Points" color="Conference" title="Player Value by State" height="2000" >}}

## Schools by Conference (Stacked)

This chart shows conferences with individual schools as segments. Hover to see school details.

{{< obsplot-stacked csv="/data/DATE-HERE/DATE-HERE-top-schools.csv" groupBy="Conference" value="ProjectedPoints" color="Conference" title="School Value by Conference" height="800" >}}

## Position Distribution by Conference

This chart shows how draft value is distributed across position groups for each conference.

{{< obsplot-stacked-auto csv="/data/DATE-HERE/DATE-HERE-ranks.csv" groupBy="Conference" value="Points" color="Position" title="Position Distribution by Conference" height="1200" >}}

## Methodology

The rough methodology used for the Leagify charts is this: Each prospect is given a point value based on their current rank, which is given regardless of position ("Big Board" style).

**Rank values:**

* 01 - 10   : 35 points
* 11 - 25   : 30 points
* 26 - 35   : 25 points
* 36 - 59   : 20 points
* 60 - 70   : 15 points
* 71 - 100  : 10 points
* 101 - 120 : 8 points
* 121 - 150 : 7 points
* 151 - 180 : 6 points
* 181 - 250 : 5 points
* 251 - 300 : 2 points
* 301 - 500 : 1 point

These big board rankings came from [NFL Mock Draft Database YEAR Consensus Big Board](https://www.nflmockdraftdatabase.com/big-boards/YEAR/consensus-big-board-YEAR). Update the year, date range, and other details as appropriate for your data.

The data is scraped, cleaned, and mushed together with a variety of code, which is available [here](https://github.com/Leagify/prospect-scraper-mddb-2022) for viewing, if you're into that sort of thing.
