# isport-sdk-ios-release

<b>Installation</b>

WISDK is available through CocoaPods. To install it, simply add the following line to your Podfile: 

```sh
$ pod 'ISPORTSDK', 'X.X.X'
```
where X.X.X is your preferred version.

```
Latest released version to to CocoaPods is 1.2.5
```

<b>Usage</b>

Swift Code

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

    let data = ISportData(
        matchId: "11886290",
        token: "abcxyz",
        type: ISportData.ViewType.DETAIL,
        env: ISportData.Environment.DEV,
        debug: true
    )


    ISPORTSDK.onUserLogin = {
            
    }

    ISPORTSDK.onUserPurchase = { (packageId) in
        print("====onUserPurchase: \(packageId)")

    }

    //Call when Purchase success
    ISPORTSDK.onUserPurchaseSuccess()

    //Call when Purchase failed
    ISPORTSDK.onUserPurchaseFailed()

    ISPORTSDK.onUserStartLiveDetail = { (channelId) in
        print("====onUserStartLiveDetail: \(channelId)")
    }
        

    ISPORTSDK.addISportView(container: view, frame: view.frame, data: data)
}


```

