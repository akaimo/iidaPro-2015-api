# 飯田プロジェクト2015 APIサーバー
ごみ分別アプリのAPIサーバーです。  
アプリ本体はこっち  
https://github.com/akaimo/iidaPro-2015

## API一覧
- trash
- tips
- district

## trash
ごみの分別に関するデータを扱います。
#### 一覧取得
```
GET http://153.120.170.41:3000/api/v1/trash
```
```
[
    {
		"id": 1,
		"title": "アームスタンド",
		"read": "あーむすたんど",
		"read_head": "あ",
		"category": "小物金属",
		"all_category": "小物金属|粗大ごみ",
		"info": "最長辺30cm以上のものは粗大ごみへ\n【小物金属の排出にあたって】収集は「月2回」です。基本的に袋に入れずに出しますが、散らばりやすいものはひもやテープで束ねたり、透明な袋にいれて出してください。30cm以上のものは粗大ごみとなります（ハンガーや傘など一部例外もあります）\n【粗大ごみの排出にあたって】収集は「月2回」で「申し込み制」です。粗大ごみの申し込みは粗大ごみ受付センターでの電話（044-930-5300）またはインターネットで行えます。申し込み後は、川崎市内のコンビニ、郵便局で粗大ごみ処理券を購入し、収集日に粗大ごみ処理券の処理シールに「氏名または受付番号」を記入し、粗大ごみの見やすい部分に貼って出してください。",
		"created_at": "2015-12-14T06:33:14.123Z",
		"updated_at": "2015-12-14T06:33:14.123Z"
	},
	{
		"id": 2,
		"title": "アームバンド",
		"read": "あーむばんど",
		"read_head": "あ",
		"category": "普通ごみ",
		"all_category": "普通ごみ",
		"info": "【普通ごみの排出にあたって】収集は「週2回」です。ふた付きポリ容器または半透明または透明の袋にいれて出してください。指定袋はありません。",
		"created_at": "2015-12-14T06:33:14.154Z",
		"updated_at": "2015-12-14T06:33:14.154Z"
	},
	...
]
```

## tips
豆知識に関するデータを扱います。
#### 一覧取得
```
GET http://153.120.170.41:3000/api/v1/tip
```
```
[
    {
        "id": 1,
        "title": "ごみの水分を飛ばそう",
        "detail": "生ごみは、水分が非常に多く含まれています。そのため、ごみから水分を取り除くことで、ごみの重量や体積を小さくすることができます。体積を小さくするとごみを出す側から見れば、ごみ出しの労力が減り、処理する側からも、乾燥している方が効率よく焼却でき、コストと環境負荷が軽減されるので、いいことずくめです。ごみの水分を取り除くには、例えば三角コーナーに使う",
        "genre": "テクニック",
        "created_at": "2015-10-21T11:37:15.267Z",
        "updated_at": "2015-10-21T11:37:15.267Z"
    },
    {
        "id": 2,
        "title": "川崎市のごみの分類",
        "detail": "川崎市のごみの分類は、週2回の「普通ごみ」と、それぞれ週1回の「空き缶・ペットボトル・空きびん・使用済み乾電池」、「ミックスペーパー」、「プラスチック製容器包装」および、月2回の「小物金属・粗大ごみ」となっています。",
        "genre": "ルール",
        "created_at": "2015-10-21T11:37:15.280Z",
        "updated_at": "2015-10-21T11:37:15.280Z"
    },
    ...
]
```

## district
地域データを扱います。

#### 一覧取得
```
GET http://153.120.170.41:3000/api/v1/district
```
```
[
    {
        "id": 1,
        "area": "川崎区",
        "town": "浅田",
        "read": "あさだ",
        "read_head": "あ",
        "office": "南部",
        "normal_1": "月",
        "normal_2": "木",
        "bottle": "火",
        "plastic": "土",
        "mixedPaper": "金",
        "bigRefuse_date": "水",
        "bigRefuse_1": 2,
        "bigRefuse_2": 4,
        "created_at": "2015-11-20T10:17:07.675Z",
        "updated_at": "2015-11-20T10:17:07.675Z"
    },
    {
        "id": 2,
        "area": "川崎区",
        "town": "浅野町",
        "read": "あさのちょう",
        "read_head": "あ",
        "office": "南部",
        "normal_1": "火",
        "normal_2": "金",
        "bottle": "土",
        "plastic": "水",
        "mixedPaper": "木",
        "bigRefuse_date": "木",
        "bigRefuse_1": 1,
        "bigRefuse_2": 3,
        "created_at": "2015-11-20T10:17:07.706Z",
        "updated_at": "2015-11-20T10:17:07.706Z"
    },
    ...
]
```

## 更新履歴
- 2015/12/14
  - trashに'all_category', 'info'を追加
- 2015/11/20
  - trashに'read_head'を追加
  - districtに'read', 'read_head', 'office'を追加
- 2015/11/15
  - districtを追加
- 2015/10/21
  - READMEを作成
