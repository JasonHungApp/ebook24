import 'package:ebook24/solar_terms_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '24 節氣',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, Color> seasonColors = {
      "春": Colors.green[700]!,
      "夏": Colors.pink[700]!,
      "秋": Colors.orange[700]!,
      "冬": Colors.blue[700]!,
    };
    final Map<String, Color> seasonGridViewColors = {
      "春": Colors.green[100]!,
      "夏": Colors.pink[100]!,
      "秋": Colors.orange[100]!,
      "冬": Colors.blue[100]!,
    };

    return DefaultTabController(
      length: solarTerms.keys.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('24 節氣', style: TextStyle(fontSize: 32)),
          bottom: TabBar(
            //labelStyle: TextStyle(fontSize: 18.0), // 設定字體大小
            //tabs: solarTerms.keys.map((season) => Tab(text: season)).toList(),
            tabs: solarTerms.keys.map((season) {
              return Tab(
                child: Text(
                  season,
                  style: TextStyle(
                    fontSize: 24,
                    color: seasonColors[season], // 為每個Tab設定顏色
                  ),
                ),
              );
            }).toList(),

            // tabs: [
            //   Tab(child: Text("春", style: TextStyle(color: Colors.green))),
            //   Tab(child: Text("夏", style: TextStyle(color: Colors.pink))),
            //   Tab(child: Text("秋", style: TextStyle(color: Colors.orangeAccent))),
            //   Tab(child: Text("冬", style: TextStyle(color: Colors.blue))),
            // ],
          ),
        ),
        body: TabBarView(
          children: solarTerms.keys.map((season) {
            return Container(
              color: seasonColors[season], // 設定背景顏色
              child: GridView.builder(
                padding: const EdgeInsets.all(10.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: solarTerms[season]!.length,
                itemBuilder: (context, index) {
                  final term = solarTerms[season]![index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(solarTerm: term),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0), // 設定圓角
                      ),
                      child: Column(
                        children: [
                          // 上半部分：圖片
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12.0)), // 圓角處理
                            child: Stack(
                              children: [
                                ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.3), // 控制圖片淡化的程度
                                    BlendMode.srcATop,
                                  ),
                                  child: Image.network(
                                    term.imageUrl,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: 100.0, // 設定圖片的高度
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // 下半部分：文字
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(term.name,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(height: 4),
                                Text(term.date,
                                    style: const TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final SolarTerm solarTerm;

  const DetailPage({super.key, required this.solarTerm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(solarTerm.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.network(solarTerm.imageUrl, fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                solarTerm.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                solarTerm.date,
                style:
                    const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                solarTerm.description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
