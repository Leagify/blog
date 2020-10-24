---
title: "2019 XFL Draft Review"
date: 2019-10-16T22:54:38-05:00
---

The YouTube livestream may have been disappointing, but it's still football!  Let's find out more about where these players came from.

<!--more-->

Below is a chart showing the drafted players based on the state where they played in college.

This chart is filterable. Click a state to see the only those prospects, or check out prospects within a particular conference. Feel free to maximize the charts using the button on the lower right.

{{< rawhtml >}}
<div class='tableauPlaceholder' id='viz1571283459068' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;XF&#47;XFLDraft-2019-10-16&#47;XFLDraftReview&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='XFLDraft-2019-10-16&#47;XFLDraftReview' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;XF&#47;XFLDraft-2019-10-16&#47;XFLDraftReview&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1571283459068');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else { vizElement.style.width='100%';vizElement.style.height='777px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
{{< /rawhtml >}}

Information about the draft:

* The draft happened in several phases:
  * (Phase 0) Initial QB Allocation (One QB to each team)
  * (Phase 1) Skill Players (QB, RB, TE, WR)
  * (Phase 2) Offensive line (OT, OG, C)
  * (Phase 3) Defensive Front Seven (DT, DE, LB)
  * (Phase 4) Defensive Backs (CB, S)
  * (Phase 5) All Positions (Including P, K, ST)
* The draft was live-streamed on YouTube on [Day 1](https://youtu.be/SyufZZBuEcQ) and [Day 2](https://youtu.be/tLe1n5xfxwo), with the exception of Phase 5, which was not livestreamed, and information about picks was frustratingly vague compared to the other phases.
* During the livestream, some teams would yell and clap after announcing their picks, which was annoying when listening to the stream on headphones.

Some thoughts about the data shown here:

* Everything's big in Texas, including the number of football prospects. They led the way with 54 players selected from 21 different Texas schools.
* Florida wasn't that far behind, with 40 players selected from 8 different Florida schools.
* The SEC led the way with the most players selected, at 81.
* 14 players from Division 3 schools were drafted, which is pretty cool.
* I wasn't able to find a clean, robust source of NFL data for players that had spent any time with one or more teams, so that information is not included.

Data was obtained from the [XFL website](https://www.xfl.com/), with phases 0-4 having their own draft tracker, and the open phase not having a draft tracker, but having results posted on each team's page (without any information on the round or pick they were taken).

I collated the draft data and joined up information regarding the location of each school in [this repository on GitHub](https://github.com/Leagify/xfl-draft-tracker), if you wanted to check out my work. To wrangle the data, I used Google Sheets, Visual Studio Code with Rainbow CSV, OpenRefine, and Tableau Public.

Enjoy!
