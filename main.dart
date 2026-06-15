import 'package:flutter/material.dart';

void main() {
  runApp(const NanjingTravelApp()); // 建议后续可将类名改为 HubeiTravelApp 更贴切
}

class NanjingTravelApp extends StatelessWidget {
  const NanjingTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "湖北风景名胜", // 1. 修正主题名称
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class Attraction {
  final String title;
  final String subtitle;
  final String image;
  final String description;

  const Attraction({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.description,
  });
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Attraction> attractions = const [
    Attraction(
      title: "黄鹤楼/황학루",
      subtitle: "江南三大名楼之一/강남의 3대 명탑 중 하나",
      image: "images/huanghelou.png",
      description:
      "黄鹤楼位于湖北省武汉市蛇山之巅，濒临长江，是中国四大名楼之一，素有“天下江山第一楼”的美誉。黄鹤楼始建于三国时期，历经多次毁坏与重建，如今已成为武汉最具代表性的地标建筑。登楼远眺，可以欣赏长江大桥、长江两岸风光和武汉城市天际线，感受悠久的历史文化底蕴。\n\n"
          "후베이성 우한의 뱀산 정상에 위치한 황학루는 양쯔강을 내려다보는 중국 4대 명문 중 하나이자 '천하제일의 탑'으로 불립니다. 삼국시대에 처음 건립된 황학루는 여러 차례 파괴와 재건을 거쳐 오늘날 우한의 대표적인 랜드마크가 되었습니다. 황학루에 오르면 양쯔강대교와 강변의 풍경, 그리고 우한의 스카이라인을 한눈에 조망할 수 있어 도시의 풍부한 역사와 문화를 체험할 수 있습니다.",
    ),
    Attraction(
      title: "东湖风景区/이스트 레이크 경관 지역",
      subtitle: "国家5A级旅游景区/국가 5A급 관광 명소",
      image: "images/donghu.png",
      // 2. 补全了此处缺失的韩语描述
      description:
      "东湖位于武汉市中心，是中国面积最大的城中湖之一，总面积超过33平方公里。景区拥有磨山、听涛、落雁等多个特色区域，四季景色优美，尤其春季樱花盛开时吸引大量游客。游客可以骑行绿道、泛舟湖面、漫步花海，享受自然与城市融合的独特魅力。\n\n"
          "둥후(동호)는 우한 시내 중심부에 위치하며, 면적이 33평방킬로미터가 넘는 중국 최대의 도심 호수 중 하나입니다. 모산, 청도, 루옌 등 여러 특색 구역으로 나뉘어 있으며 사계절 내내 아름다운 풍경을 자랑합니다. 특히 봄에는 벚꽃이 만발하여 수많은 관광객을 끌어모읍니다. 방문객들은 녹색 산책로를 자전거로 달리거나, 호수 위에서 배를 타거나, 꽃바다를 거닐며 자연과 도시가 어우러진 독특한 매력을 즐길 수 있습니다.",
    ),
    Attraction(
      title: "三峡大坝/싼샤댐",
      subtitle: "世界级水利工程/세계적 수준의 수자원 보존 프로젝트",
      image: "images/sanxiadaba.png",
      description:
      "三峡大坝位于湖北省宜昌市，是世界著名的大型水利枢纽工程，也是长江三峡的重要组成部分。大坝集防洪、发电、航运等功能于一体，其宏伟壮观的工程规模令人震撼。游客可以参观坛子岭、185观景平台等景点，近距离感受现代工程奇迹。\n\n"
          "후베이성 이창시에 위치한 싼샤댐은 세계적으로 유명한 대규모 수력 발전 프로젝트이자 양쯔강 싼샤댐 건설 사업의 핵심 요소입니다. 이 댐은 홍수 조절, 발전, 항해 기능을 통합적으로 수행하며, 그 웅장한 규모는 보는 이에게 경외감을 불러일으킵니다. 방문객들은 탄쯔릉과 185 전망대와 같은 명소를 둘러보며 이 현대 공학의 경이로움을 직접 체험할 수 있습니다.",
    ),
    Attraction(
      title: "武当山/우당산",
      subtitle: "世界文化遗产/세계문화유산",
      image: "images/wudangshan.png",
      description:
      "武当山位于湖北省十堰市，是中国著名的道教圣地，也是世界文化遗产。这里群峰连绵，古建筑群保存完好，包括金顶、紫霄宫、南岩宫等著名景点。武当山还是太极拳的重要发源地之一，以深厚的道教文化和壮丽的自然风光闻名中外。\n\n"
          "후베이성 스옌시에 위치한 무당산은 중국의 유명한 도교 성지이자 세계문화유산입니다. 금봉, 자소궁, 남연궁 등 명승지를 비롯하여 잘 보존된 고대 건축물들이 겹겹이 펼쳐져 있습니다. 무당산은 태극권의 중요한 발상지 중 하나이며, 심오한 도교 문화와 웅장한 자연 경관으로 국내외에서 명성이 높습니다.",
    ),
    Attraction(
      title: "恩施大峡谷/엔시 그랜드 캐년",
      subtitle: "喀斯特地貌奇观/카르스트 지형의 경이로움",
      image: "images/enshi.png",
      description:
      "恩施大峡谷位于湖北省恩施土家族苗族自治州，以壮观的峡谷地貌、绝壁栈道和独特的喀斯特景观闻名。景区内拥有“一炷香”等著名自然奇观，以及云龙地缝等地质景点。这里空气清新，生态环境优越，是徒步、摄影和避暑休闲的理想去处。\n\n"
          "후베이성 엔시 투지아 먀오족 자치주에 위치한 엔시 그랜드 캐니언은 웅장한 협곡 지형, 절벽 산책로, 독특한 카르스트 지형으로 유명합니다. 이곳은 '일각향'과 같은 유명한 자연 경관과 윈룽 지열과 같은 지질학적 명소를 자랑합니다. 맑은 공기와 우수한 생태 환경을 갖춘 엔시 그랜드 캐니언은 등산, 사진 촬영, 여름 휴양에 이상적인 여행지입니다.",
    ),
    Attraction(
      title: "神农架/신농가",
      subtitle: "世界自然遗产/세계 자연 유산",
      image: "images/shennongjia.png",
      description:
      "神农架位于湖北省西部山区，是中国著名的自然保护区和世界自然遗产地。这里森林覆盖率极高，拥有丰富的珍稀动植物资源，被誉为‘华中屋脊’和‘天然生物基因库’。神农架四季风景各异，夏季凉爽宜人，冬季银装素裹，是生态旅游胜地。\n\n"
          "후베이성 서부 산악 지대에 위치한 선농가(Shennongjia)는 중국의 유명한 자연보호구역이자 세계 자연유산입니다. 울창한 삼림으로 뒤덮인 이곳은 희귀하고 귀중한 동식물이 풍부하여 ‘중국 중부의 지붕’이자 ‘자연 유전자 은행’이라는 별칭을 얻고 있습니다. 선농가는 시원하고 쾌적한 여름과 설경으로 뒤덮인 겨울 등 계절마다 독특한 풍경을 자랑하며, 생태 관광지로 손꼽힙니다.",
    ),
    Attraction(
      title: "古琴台/구친 테라스",
      subtitle: "知音文化发源地/직음문화의 발상지",
      image: "images/guqintai.png",
      description:
      "古琴台位于武汉市汉阳区，相传是春秋时期俞伯牙鼓琴、钟子期知音相会之地，因此成为‘高山流水遇知音’典故的重要文化象征。景区环境幽雅，亭台楼阁古色古香，是了解中国传统音乐文化和知音文化的重要场所。\n\n"
          "구친 테라스는 우한시 한양구에 위치해 있습니다. 전설에 따르면 춘추시대에 우보야가 거문고를 연주하며 종자기를 만났다고 전해지는 곳으로, ‘산과 물이 만나 인연을 맺다’라는 속담을 상징하는 중요한 장소로 자리매김했습니다. 고풍스러운 정자와 누각이 어우러진 아름다운 경관은 중국 전통 음악 문화와 인연의 문화를 이해하는 데 중요한 역할을 합니다.",
    ),
    Attraction(
      title: "归元禅寺/구이위안 사원",
      subtitle: "武汉著名佛教寺院/우한의 유명한 불교 사원들",
      image: "images/guiyuansi.png",
      description:
      "归元禅寺始建于清朝，是武汉地区规模最大、影响力最广的佛教寺院之一。寺内建筑庄严肃穆，保存有大量佛教文物和精美罗汉雕塑。每逢春节和重要节日，都会吸引众多游客和信众前来参观祈福。\n\n"
          "청나라 시대에 처음 건립된 귀원사는 우한에서 가장 크고 영향력 있는 불교 사찰 중 하나입니다. 엄숙하고 위엄 있는 사찰 경내에는 수많은 불교 유물과 정교한 아라한 조각상이 보존되어 있습니다. 춘절을 비롯한 주요 명절 기간에는 수많은 관광객과 신자들이 방문하여 복을 기원합니다.",
    ),
    Attraction(
      title: "赤壁古战场/적벽대전장",
      subtitle: "三国文化名胜/삼국시대 문화 유적지",
      image: "images/chibi.png",
      description:
      "赤壁古战场位于湖北省咸宁市赤壁市，是三国时期著名赤壁之战的重要遗址。这里保留了大量与三国历史相关的文化景观，包括摩崖石刻、周瑜雕像和赤壁大战纪念建筑等。游客可以在游览过程中深入了解三国历史，感受英雄辈出的时代风云。\n\n"
          "후베이성 셴닝시 츠비시에 위치한 고대 츠비 유적지는 삼국시대의 유명한 츠비전이 벌어졌던 중요한 유적지입니다. 이곳에는 암각화, 저우유 상, 츠비전 기념관 등 삼국시대 역사와 관련된 수많은 문화 경관이 보존되어 있습니다. 방문객들은 츠비전을 통해 삼국시대의 역사를 깊이 이해하고 영웅들의 격동적인 시대를 생생하게 체험할 수 있습니다.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("湖北风景名胜/후베이성 관광지"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: attractions.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            final item = attractions[index];

            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(item: item),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Expanded(
                      // 3. 增加 errorBuilder，防止本地图片不存在时导致页面红屏报错
                      child: Image.asset(
                        item.image,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[200],
                            child: const Icon(Icons.broken_image, size: 40, color: Colors.grey),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        item.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        item.subtitle,
                        style: const TextStyle(fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Attraction item;

  const DetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.image,
              width: double.infinity,
              height: 320,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 320,
                  color: Colors.grey[200],
                  child: const Center(child: Icon(Icons.broken_image, size: 60, color: Colors.grey)),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                item.title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                item.description,
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.8,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                // 4. 修正了底部欢迎语，从“武汉”改为了“湖北”
                "欢迎来到湖北，探索这片融合历史文化与自然山水魅力的土地！\n\n"
                    "후베이에 오신 것을 환영합니다! 역사적인 문화와 아름다운 자연 경관이 조화롭게 어우러진 이 땅을 탐험해 보세요!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}