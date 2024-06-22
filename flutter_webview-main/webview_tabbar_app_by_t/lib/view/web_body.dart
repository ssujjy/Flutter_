import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// import 'daum.dart';
// import 'google.dart';
// import 'naver.dart';

class Home extends StatefulWidget {
  final String siteName;
  const Home({super.key, required this.siteName});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
//PROPERTIES
late TabController tabController;
late WebViewController controller; 
late bool isLoading; 
late String siteName; 

//INIT 
@override
  void initState() {
    super.initState();
    isLoading = true; 
    siteName = "www.daum.net";
    tabController = TabController(length: 3, vsync: this);

    controller = WebViewController()
    // controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (progress) {
          isLoading = true; 
          setState(() {});
        },
        onPageStarted: (url) {
          isLoading = true; 
          setState(() {});
        },
        onPageFinished: (url) {
          isLoading = false; 
          setState(() {});
        },
        onWebResourceError: (error) {
          isLoading = false; 
          setState(() {});
        },
      )
    )
    ..loadRequest(Uri.parse("https://$siteName"));
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   foregroundColor: Colors.white,
      //   title: const Text('WebView - Tabbar'),
      // ),
      body: Stack(
        children: [
          isLoading
          ? const Center( // if true
            child: CircularProgressIndicator(),
          )
          : const Stack(), // if not true 
          WebViewWidget(controller: controller),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.amber,
        height: 80,
        child: TabBar(
          controller: tabController,
          labelColor: Colors.blue,
          // indicatorSize: TabBarIndicatorSize.tab,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.red,
          indicatorWeight: 5,
          tabs: [
            Tab(
              icon: //Icon(Icons.looks_one),
              Image.asset(
                'images/smile.png',
                width: 20,
              ),
              text: "네이버",
            ),
            Tab(
              icon: 
              Image.asset(
                'images/smile.png',
                width: 20,
              ),
              text: "구글",
            ),
            Tab(
              icon: 
              Image.asset(
                'images/smile.png',
                width: 20,
              ),
              text: "다음",
            ),
          ],
        ),
      ),
    );
  }
  // Functions ------------------
  backProcess() async{  // CPU따로쓰겠다. //따로 움직이겠다.
    if(await controller.canGoBack()){
      controller.goBack();
    }else{
      snackBarFunction();
    }
  }
  refreshProcess() async{  // CPU따로쓰겠다. //따로 움직이겠다.
    controller.reload();
  }
  forwardProcess() async{  // CPU따로쓰겠다. //따로 움직이겠다.
    if(await controller.canGoForward()){
      controller.goForward();
    }else{
      snackBarFunction();
    }
  }
  // 
  snackBarFunction(){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('No more to go !'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }
}