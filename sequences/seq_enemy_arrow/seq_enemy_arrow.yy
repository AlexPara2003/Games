{
  "resourceType": "GMSequence",
  "resourceVersion": "1.4",
  "name": "seq_enemy_arrow",
  "spriteId": null,
  "timeUnits": 1,
  "playback": 0,
  "playbackSpeed": 24.0,
  "playbackSpeedType": 0,
  "autoRecord": true,
  "volume": 1.0,
  "length": 60.0,
  "events": {
    "Keyframes": [
      {"id":"1cf792a2-2135-43b7-8fd1-25106146ccb8","Key":0.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"Events":[
              "seqStart",
            ],"resourceVersion":"1.0","resourceType":"MessageEventKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<MessageEventKeyframe>",},
      {"id":"328b7885-1ed3-48c5-acc6-4bdc3e7c725f","Key":12.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"Events":[
              "playerHit",
            ],"resourceVersion":"1.0","resourceType":"MessageEventKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<MessageEventKeyframe>",},
      {"id":"d0cd4d9e-6c92-4713-9fbf-7cdf1be1f22d","Key":22.9999,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"Events":[
              "seqEnd",
            ],"resourceVersion":"1.0","resourceType":"MessageEventKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<MessageEventKeyframe>",},
    ],
    "resourceVersion": "1.0",
    "resourceType": "KeyframeStore<MessageEventKeyframe>",
  },
  "moments": {
    "Keyframes": [],
    "resourceVersion": "1.0",
    "resourceType": "KeyframeStore<MomentsEventKeyframe>",
  },
  "tracks": [
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"spr_arrow","keyframes":{"Keyframes":[
          {"id":"3b8a8c4d-4a77-4332-8bce-01a2a4661f67","Key":6.0,"Length":10.5,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"Id":{"name":"spr_arrow","path":"sprites/spr_arrow/spr_arrow.yy",},"resourceVersion":"1.0","resourceType":"AssetSpriteKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<AssetSpriteKeyframe>",},
        ],"resourceVersion":"1.0","resourceType":"KeyframeStore<AssetSpriteKeyframe>",},"trackColour":4294083912,"inheritsTrackColour":true,"builtinName":0,"traits":0,"interpolation":1,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","keyframes":{"Keyframes":[
              {"id":"f699a3b5-486f-4d18-90c6-7def4ea0fb6d","Key":6.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":true,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4294083912,"inheritsTrackColour":true,"builtinName":16,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":true,"modifiers":[],},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","keyframes":{"Keyframes":[
              {"id":"ca3d2d7e-102b-4ada-8c40-4a59d9a335bf","Key":6.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":356.89545,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":-56.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
              {"id":"c178bc9c-ed3a-416a-b96d-e15c9328b8eb","Key":12.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":-6.641815,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":-56.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
              {"id":"e62275f4-aed5-4b12-9812-ee3cdaa9468e","Key":16.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":-6.641815,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":-56.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4294083912,"inheritsTrackColour":true,"builtinName":14,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":false,"modifiers":[],},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","keyframes":{"Keyframes":[
              {"id":"b8d65b1b-9135-4dc6-975c-a457839e7ca7","Key":6.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":true,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4294083912,"inheritsTrackColour":true,"builtinName":8,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":true,"modifiers":[],},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","keyframes":{"Keyframes":[
              {"id":"aa4e4d2d-5626-469b-a752-271976d87a26","Key":6.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":true,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":1.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":1.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4294083912,"inheritsTrackColour":true,"builtinName":15,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":true,"modifiers":[],},
      ],"events":[],"isCreationTrack":false,"modifiers":[],},
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_enemy_battle","keyframes":{"Keyframes":[
          {"id":"ab6ac104-a9e6-48fe-a1a8-40287eb12144","Key":-1.0,"Length":24.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"Id":{"name":"obj_enemy_battle","path":"objects/obj_enemy_battle/obj_enemy_battle.yy",},"resourceVersion":"1.0","resourceType":"AssetInstanceKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<AssetInstanceKeyframe>",},
        ],"resourceVersion":"1.0","resourceType":"KeyframeStore<AssetInstanceKeyframe>",},"trackColour":4291119346,"inheritsTrackColour":true,"builtinName":0,"traits":0,"interpolation":1,"tracks":[
        {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","keyframes":{"Keyframes":[],"resourceVersion":"1.0","resourceType":"KeyframeStore<ColourKeyframe>",},"trackColour":4291119346,"inheritsTrackColour":true,"builtinName":10,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":false,"modifiers":[],},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","keyframes":{"Keyframes":[
              {"id":"e126c5c5-e04e-4455-864d-f788170a27f9","Key":-1.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":true,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4291119346,"inheritsTrackColour":true,"builtinName":16,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":true,"modifiers":[],},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","keyframes":{"Keyframes":[
              {"id":"82f8ac76-0132-4a4c-863a-f3df2f07234e","Key":0.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":448.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4291119346,"inheritsTrackColour":true,"builtinName":14,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":false,"modifiers":[],},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","keyframes":{"Keyframes":[
              {"id":"93ee08a2-f373-44c8-be5a-630ce84fcb0c","Key":-1.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":true,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4291119346,"inheritsTrackColour":true,"builtinName":8,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":true,"modifiers":[],},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","keyframes":{"Keyframes":[
              {"id":"abbb1f13-852a-4e0a-9dcf-0c792e88be66","Key":0.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":-1.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":1.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4291119346,"inheritsTrackColour":true,"builtinName":15,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":false,"modifiers":[],},
      ],"events":[],"isCreationTrack":false,"modifiers":[],},
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"spr_player_battle","keyframes":{"Keyframes":[
          {"id":"2e0fb626-d1cd-4365-8582-54c529eed201","Key":-1.0,"Length":24.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"Id":{"name":"spr_player_battle","path":"sprites/spr_player_battle/spr_player_battle.yy",},"resourceVersion":"1.0","resourceType":"AssetSpriteKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<AssetSpriteKeyframe>",},
        ],"resourceVersion":"1.0","resourceType":"KeyframeStore<AssetSpriteKeyframe>",},"trackColour":4294068419,"inheritsTrackColour":true,"builtinName":0,"traits":0,"interpolation":1,"tracks":[
        {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","keyframes":{"Keyframes":[
              {"id":"3bcacdcf-4fc2-4b80-bb6f-d74d16b6f976","Key":11.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"Colour":4294967295,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"ColourKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<ColourKeyframe>",},
              {"id":"bc5656e8-6491-449c-b81c-ac5b4025cb95","Key":12.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"Colour":4288256511,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"ColourKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<ColourKeyframe>",},
              {"id":"00adaac3-2cf7-4409-ade5-2f731aa3df5e","Key":14.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"Colour":4294967295,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"ColourKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<ColourKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<ColourKeyframe>",},"trackColour":4294068419,"inheritsTrackColour":true,"builtinName":10,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":false,"modifiers":[],},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","keyframes":{"Keyframes":[
              {"id":"d41fb893-1ad5-457e-bac8-412363018159","Key":-1.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":true,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4294068419,"inheritsTrackColour":true,"builtinName":16,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":true,"modifiers":[],},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","keyframes":{"Keyframes":[
              {"id":"ee11c316-c30f-487a-8df9-15a4999ec6bf","Key":0.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":1.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
              {"id":"5768ca7e-61d0-4275-b09d-1bffe29ae866","Key":11.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":1.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
              {"id":"494a942e-466d-4953-8caa-30bd2d3cd32e","Key":12.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":-6.641815,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
              {"id":"e23d26f2-31fa-4980-896d-1f823b974d6f","Key":13.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":false,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":1.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4294068419,"inheritsTrackColour":true,"builtinName":14,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":false,"modifiers":[],},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","keyframes":{"Keyframes":[
              {"id":"911283e9-4154-4194-b6eb-45593b02d294","Key":-1.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":true,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":0.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4294068419,"inheritsTrackColour":true,"builtinName":8,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":true,"modifiers":[],},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","keyframes":{"Keyframes":[
              {"id":"c5bc6d58-1d4e-4874-aaef-8a9d52930b63","Key":-1.0,"Length":1.0,"Stretch":false,"Disabled":false,"IsCreationKey":true,"Channels":{"0":{"EmbeddedAnimCurve":null,"RealValue":1.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},"1":{"EmbeddedAnimCurve":null,"RealValue":1.0,"AnimCurveId":null,"resourceVersion":"1.0","resourceType":"RealKeyframe",},},"resourceVersion":"1.0","resourceType":"Keyframe<RealKeyframe>",},
            ],"resourceVersion":"1.0","resourceType":"KeyframeStore<RealKeyframe>",},"trackColour":4294068419,"inheritsTrackColour":true,"builtinName":15,"traits":0,"interpolation":1,"tracks":[],"events":[],"isCreationTrack":true,"modifiers":[],},
      ],"events":[],"isCreationTrack":false,"modifiers":[],},
  ],
  "visibleRange": {
    "x": 0.0,
    "y": 23.0,
  },
  "lockOrigin": false,
  "showBackdrop": true,
  "showBackdropImage": false,
  "backdropImagePath": "",
  "backdropImageOpacity": 0.5,
  "backdropWidth": 1366,
  "backdropHeight": 768,
  "backdropXOffset": 0.0,
  "backdropYOffset": 0.0,
  "xorigin": 2,
  "yorigin": 0,
  "eventToFunction": {},
  "eventStubScript": null,
  "parent": {
    "name": "Sequences",
    "path": "folders/Sequences.yy",
  },
}