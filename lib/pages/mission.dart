import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/components/top_app_bar.dart';
import 'package:infinite_mobile_app/components/nav.dart';

class Mission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InfiniteAppBar(context) as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: new Text(
                "Our Mission",
                style: Theme.of(context).textTheme.headline1
              )
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
              child: new Text(
                "Infinite Industries makes experimental contemporary culture more accessible to everyone. Our digital platform and open-source tools highlight cultural events and experiences so more of us can discover, share and participate in them.",
                style: Theme.of(context).textTheme.bodyText1
              )
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: new Text(
                "If it’s happening, and it’s happening - it’s here.",
                style: Theme.of(context).textTheme.headline3)
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
              child: new Text(
                "Infinite Industries highlights experiments in contemporary culture so more of us can discover, share and participate. Gallery openings, punk shows, theater, street art, orchestra, museums, hip-hop, dance; it’s all curated here for you to experience.",
                style: Theme.of(context).textTheme.bodyText1
              )
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: new Text("Art belongs to everyone who wants it",
                  style: Theme.of(context).textTheme.headline3
              )
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
              child: new Text(
                "We provide space for the cultural activities that fly under the radar, because the ones that do make it to your screen typically have an advertising budget to thank for it. As a non-profit, we believe in leveling ground where commercial constraints indeed constrain.",
                style: Theme.of(context).textTheme.bodyText1
              )
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: new Text(
                "Experimental, contemporary culture is our way back",
                style: Theme.of(context).textTheme.headline3
              )
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
              child: new Text(
                "Culture isn’t fixed. It ebbs, flows, transforms, doubles back. Experimentation is the path for its creation and eventually, we find our lives redefined. Infinite Industries focuses on the experimentation that untethers us from the everyday. It keeps life interesting, and assists in making our collective future more human, more inhabitable, more... whatever varlues you'd want to see in the world that are conspicuously absent now, that you believe art can help usher in.",
                style: Theme.of(context).textTheme.bodyText1
              )
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: new Text(
                "And finally, why the name?",
                style: Theme.of(context).textTheme.headline3
              )
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 60.0),
              child: new Text(
                "Artists constantly evolve, inventing new genres and redefining their methods. The processes and mediums of the past aren’t always sufficient for the challenges of the future. We can thank artists for an infinity of possibilities. Production trends organize beneath the umbrella term \"industry,\" creating an infinity of industries and our special name ;)",
                style: Theme.of(context).textTheme.bodyText1
              )
            )
          ]
        )
      ),
      endDrawer: NavDrawer(context)
    );
  }
}
