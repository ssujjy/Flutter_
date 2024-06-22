import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

//PROPERTIES
late WebViewController controller; // *** 
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
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('WebView'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: (){
                        siteName = "www.google.com";
                        reloadSite();
                        // setState(() {});
                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: const Text(
                        'Google',
                          style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: (){
                        siteName = "www.naver.com";
                        reloadSite();
                        // setState(() {});
                      }, 
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: const Text(
                        'Naver',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: (){
                        siteName = "www.daum.net";
                        reloadSite();
                        // setState(() {});
                      }, 
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: const Text(
                        'Daum',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          isLoading
          ? const Center( // if true
            child: CircularProgressIndicator(),
          )
          : const Stack(), // if not true 
          WebViewWidget(controller: controller)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () => backProcess(),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
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