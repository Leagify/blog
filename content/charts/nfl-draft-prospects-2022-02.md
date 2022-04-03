+++
title =  "2022 NFL Draft Prospects - Less than a month away!"
date = 2022-04-03T04:59:40Z
tags = []
featured_image = ""
description = "2022 NFL Draft Prospects - Less than a month away!"
+++
It's April, and the NFL Draft is scheduled for April 28th!  It's only a few weeks away!

<!--more-->

Without further ado, let's see some charts!
These charts are filterable. You can see the values overall, or by conference. It looks best if you maximize the charts using the button on the lower right.

{{< rawhtml >}}
<div class='tableauPlaceholder' id='viz1648962764007' style='position: relative'><noscript><a href='#'><img alt='Leagify Draft Value ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2022-LeagifyDraftValueStory-2022-04-02&#47;LeagifyDraftValue&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='2022-LeagifyDraftValueStory-2022-04-02&#47;LeagifyDraftValue' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2022-LeagifyDraftValueStory-2022-04-02&#47;LeagifyDraftValue&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1648962764007');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
{{< /rawhtml >}}

I started getting ranks on July 19, 2021, and the most recent ranks are from April 2, 2022. 

The first tab (named Overall Draft Value) gives a geographic representation of where the value in the draft is physically located, separated by state.  The number on the state represents the number of prospects in that state, and the shade of green represents the overall draft value, with dark green representing more value than light green or white.

On the second tab of the chart (named Individual Player Variance), it's a bit confusing until you select one of the individual schools or players, then you can see the individual movement of that player over the time that these rankings have been tabulated. Take a look at Derek Stingley Jr from LSU or David Ojabo to see how the values can change. You can also select a school, and view all of the school's prospects at the same time.

The third chart just shows all of the players and all their ranks over time. This chart is a logarithmic scale, since moving 5 spots in the top 10 is a big deal, but moving 5 spots in the top 400 isn't.

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

These big board rankings came from [NFL Mock Draft Database 2022 Consensus Big Board](https://www.nflmockdraftdatabase.com/big-boards/2022/consensus-big-board-2022), which started posting 2022 prospect information quite a while ago, and the most current rankings are from December 31st. Only the value of the player's primary position was considered.

The data is scraped, cleaned, and mushed together with a variety of code, which is available [here](https://github.com/Leagify/prospect-scraper-mddb-2022) for viewing, if you're into that sort of thing.
