+++
title =  "2025 NFL Draft Prospects"
date = 2025-03-01T04:56:11Z
tags = []
featured_image = ""
description = "2025 NFL Draft Prospects"
+++

The draft is coming to Green Bay!  Prepare yourself!

<!--more-->

Without further ado, let's see some charts!
These charts are filterable. You can see the values overall, or by conference. It looks best if you maximize the charts, but that button may not be visible in the embedded chart, so you may have to "View on Tableau Public" to get access to the maximize button.


{{< rawhtml >}}
<div class='tableauPlaceholder' id='viz1740804052830' style='position: relative'><noscript><a href='#'><img alt='Leagify Draft Value ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2025-LeagifyDraftCharts-20250228&#47;LeagifyDraftValue&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='2025-LeagifyDraftCharts-20250228&#47;LeagifyDraftValue' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2025-LeagifyDraftCharts-20250228&#47;LeagifyDraftValue&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1740804052830');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='1016px';vizElement.style.height='991px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
{{< /rawhtml >}}

The first chart shows player value by state and school.

The second chart just shows individual players and their ranks along with their projected points. If you click the name of the school on the left side, it will filter down and show you just the ranks from that school.

The third chart shows player ranks by time as well as the standard deviation of different position ranks.

The fourth chart is a line graph showing all player ranks over time, with the ability to filter by conference.

The rough methodology used for the Leagify charts is this: Each prospect is given a point value based on their current rank, which is given regardless of position ("Big Board" style).

Rank values:

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

These big board rankings came from [NFL Mock Draft Database 2025 Consensus Big Board](https://www.nflmockdraftdatabase.com/big-boards/2025/consensus-big-board-2025), which started posting 2025 prospect information quite a while ago. The earliest ranks for this draft class were from December 2022, and the most current rankings are from February 16th, 2024. Only the value of the player's primary position was considered.

The data is scraped, cleaned, and mushed together with a variety of code, which is available [here](https://github.com/Leagify/prospect-scraper-mddb-2022) for viewing, if you're into that sort of thing.