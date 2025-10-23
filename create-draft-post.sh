#!/bin/bash

# Script to create a new NFL Draft prospects blog post with CSV data
# Usage: ./create-draft-post.sh YYYY DRAFT_NAME
# Example: ./create-draft-post.sh 2027 "2027 NFL Draft Prospects"
#
# This script will:
# 1. Extract the date from CSV filenames (format: YYYY-MM-DD-*.csv)
# 2. Copy CSV files from the current directory to static/data/YYYY-MM-DD/
# 3. Create a new blog post in content/charts/ with the same structure as previous posts

set -e

# Parse arguments
if [ $# -lt 2 ]; then
    echo "Usage: $0 YYYY DRAFT_NAME"
    echo "Example: $0 2027 '2027 NFL Draft Prospects'"
    echo ""
    echo "This script will look for these CSV files in the current directory:"
    echo "  - YYYY-MM-DD-ranks.csv (required)"
    echo "  - YYYY-MM-DD-top-schools.csv (required)"
    echo "  - Any other CSV files with YYYY-MM-DD prefix will also be copied"
    echo ""
    echo "The date will be extracted from the CSV filename."
    exit 1
fi

YEAR=$1
DRAFT_NAME=$2

# Get the blog root directory (where this script is located)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Check for required CSV files in current directory and extract date
RANKS_CSV=$(ls [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]-ranks.csv 2>/dev/null | head -1 || echo "")
SCHOOLS_CSV=$(ls [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]-top-schools.csv 2>/dev/null | head -1 || echo "")

if [ -z "$RANKS_CSV" ]; then
    echo "Error: No YYYY-MM-DD-ranks.csv file found in current directory"
    exit 1
fi

if [ -z "$SCHOOLS_CSV" ]; then
    echo "Error: No YYYY-MM-DD-top-schools.csv file found in current directory"
    exit 1
fi

# Extract date from the ranks CSV filename (format: YYYY-MM-DD-ranks.csv)
DATE=$(echo "$RANKS_CSV" | grep -oE '^[0-9]{4}-[0-9]{2}-[0-9]{2}')

if [ -z "$DATE" ]; then
    echo "Error: Could not extract date from filename: $RANKS_CSV"
    exit 1
fi

echo "Detected date from CSV files: $DATE"

# Create data directory
DATA_DIR="static/data/$DATE"
mkdir -p "$DATA_DIR"

# Move CSV files (only those matching the date pattern)
echo "Moving CSV files to $DATA_DIR..."
mv ${DATE}-*.csv "$DATA_DIR/" 2>/dev/null || true

# Count how many CSV files were moved
CSV_COUNT=$(ls "$DATA_DIR"/*.csv 2>/dev/null | wc -l)
echo "Moved $CSV_COUNT CSV file(s) to $DATA_DIR"

# Determine the next post number for this year
EXISTING_POSTS=$(ls content/charts/nfl-draft-prospects-${YEAR}-*.md 2>/dev/null | wc -l)
POST_NUMBER=$(printf "%02d" $((EXISTING_POSTS + 1)))

# Create the blog post filename
POST_FILE="content/charts/nfl-draft-prospects-${YEAR}-${POST_NUMBER}.md"

# Convert date to RFC3339 format for Hugo
DATE_RFC3339="${DATE}T00:00:00Z"

# Extract month name for the description
MONTH_NAME=$(date -d "$DATE" +"%B" 2>/dev/null || date -j -f "%Y-%m-%d" "$DATE" +"%B" 2>/dev/null || echo "")
DAY=$(date -d "$DATE" +"%e" 2>/dev/null || date -j -f "%Y-%m-%d" "$DATE" +"%e" 2>/dev/null || echo "")
# Trim leading space from day
DAY=$(echo "$DAY" | xargs)

# Create the blog post
echo "Creating blog post: $POST_FILE"

cat > "$POST_FILE" << EOF
+++
title = "$DRAFT_NAME as of $MONTH_NAME $DAY"
date = ${DATE_RFC3339}
tags = ["draft", "charts", "prospects"]
featured_image = ""
description = "Interactive charts showing $YEAR NFL Draft prospect data by school, state, conference, and position"
+++

Interactive charts visualizing $YEAR NFL Draft prospect data. Hover over chart segments to see detailed information.

<!--more-->

## Player Value by School

This chart shows individual players as segments within each school's bar. Each segment represents one player, and you can hover to see player details.

{{< obsplot-stacked csv="/data/$DATE/$DATE-ranks.csv" groupBy="School" value="Points" color="Conference" title="Player Value by School" height="3000" >}}

## Player Value by State

This chart shows states with individual players as segments, colored by conference. Hover to see player name and school.

{{< obsplot-stacked csv="/data/$DATE/$DATE-ranks.csv" groupBy="State" value="Points" color="Conference" title="Player Value by State" height="2000" >}}

## Schools by Conference (Stacked)

This chart shows conferences with individual schools as segments. Hover to see school details.

{{< obsplot-stacked csv="/data/$DATE/$DATE-top-schools.csv" groupBy="Conference" value="ProjectedPoints" color="Conference" title="School Value by Conference" height="800" >}}

## Position Distribution by Conference

This chart shows how draft value is distributed across position groups for each conference.

{{< obsplot-stacked-auto csv="/data/$DATE/$DATE-ranks.csv" groupBy="Conference" value="Points" color="Position" title="Position Distribution by Conference" height="1200" >}}

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

These big board rankings came from [NFL Mock Draft Database $YEAR Consensus Big Board](https://www.nflmockdraftdatabase.com/big-boards/$YEAR/consensus-big-board-$YEAR), which started posting $YEAR prospect information quite a while ago. The earliest ranks for this draft class were from September $(($YEAR - 2)), and the most current rankings are from $MONTH_NAME $DAY, $(date -d "$DATE" +"%Y" 2>/dev/null || date -j -f "%Y-%m-%d" "$DATE" +"%Y"). Only the value of the player's primary position was considered.

The data is scraped, cleaned, and mushed together with a variety of code, which is available [here](https://github.com/Leagify/prospect-scraper-mddb-2022) for viewing, if you're into that sort of thing.
EOF

echo ""
echo "Success! Created:"
echo "  - Data directory: $DATA_DIR"
echo "  - Blog post: $POST_FILE"
echo ""
echo "Next steps:"
echo "  1. Review the generated post: $POST_FILE"
echo "  2. Test locally: hugo server"
echo "  3. Build: hugo"
echo "  4. Deploy to GitHub Pages"
