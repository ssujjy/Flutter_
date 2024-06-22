import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//PROPERTIES
late WebViewController controller; 
late bool isLoading; 
late String siteName; 

//INIT 
@override
  void initState() {
    super.initState();
    isLoading = true; 
    siteName = "www.daum.net";
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('WebView'),
        toolbarHeight: 100,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        title: const Text('WebView'),
      ),
      body: Stack(
        children: [
          isLoading
          ? const Center( // if true
            child: CircularProgressIndicator(),
          )
          : const Stack(), // if not true 
          WebViewWidget(controller: controller),
          Row(
            children: [
              FloatingActionButton(
                onPressed: () => backProcess(),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: const Icon(Icons.arrow_back),
              ),
              FloatingActionButton(
                onPressed: () => refreshProcess(),
                backgroundColor: Colors.amber,
                foregroundColor: Colors.white,
                child: const Icon(Icons.refresh),
              ),
              FloatingActionButton(
                onPressed: () => forwardProcess(),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          )

        ],
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

  reloadSite(){
    controller.loadRequest(Uri.parse("https://$siteName"));
  }

}