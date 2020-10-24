---
title: "2020 NFL Draft Prospects - The circle of life."
date: 2019-10-05T12:23:39-05:00
---

The draft is still a long way off, and the college football season is less than halfway complete, but it's never too early to start thinking about the draft!

<!--more-->

These charts are filterable. Click a state to see the only those prospects, or check out prospects within a particular conference. Feel free to maximize the charts using the button on the lower right.

{{< rawhtml >}}
<div class='tableauPlaceholder' id='viz1570160948222' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2020-LeagifyStateValuesWithPlayersAndRanks-2019-09-22&#47;ProjectedPlayerValues&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='2020-LeagifyStateValuesWithPlayersAndRanks-2019-09-22&#47;ProjectedPlayerValues' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2020-LeagifyStateValuesWithPlayersAndRanks-2019-09-22&#47;ProjectedPlayerValues&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1570160948222');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else { vizElement.style.width='100%';vizElement.style.height='827px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
{{< /rawhtml >}}

The number of prospects has increased to 400, although early in the ear it was around 250. Eventually, the number of prospects will rise to 500.

Here's another chart showing the individual prospects and their change in rank over time so far:

{{< rawhtml >}}
<div class='tableauPlaceholder' id='viz1570160846973' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2020-PlayerLineGraph-2019-09-22&#47;RanksOverTime&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='2020-PlayerLineGraph-2019-09-22&#47;RanksOverTime' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2020-PlayerLineGraph-2019-09-22&#47;RanksOverTime&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1570160846973');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
{{< /rawhtml >}}

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

These big board rankings came from [DraftTek's Big Board](https://www.drafttek.com/2020-NFL-Draft-Big-Board/Top-NFL-Draft-Prospects-2020-Page-1.asp), which started posting 2020 prospect information in May, and the most current rankings are from September 22. Only the value of the player's primary position was considered.

The data is scraped, cleaned, and mushed together with a variety of code, which is available [here](https://github.com/Leagify/scrapysharp-dt2020) for viewing, if you're into that sort of thing.