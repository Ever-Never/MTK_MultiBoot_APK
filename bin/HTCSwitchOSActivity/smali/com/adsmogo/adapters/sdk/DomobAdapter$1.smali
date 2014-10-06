.class Lcom/adsmogo/adapters/sdk/DomobAdapter$1;
.super Ljava/lang/Object;
.source "DomobAdapter.java"

# interfaces
.implements Lcn/domob/android/ads/DomobInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsmogo/adapters/sdk/DomobAdapter;->handle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/sdk/DomobAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdDismiss()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "AdsMOGO SDK"

    .line 146
    const-string v1, "DomobSDK onInterstitialAdDismiss"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public onInterstitialAdFailed(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 151
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Domob InterstitialAd Failed :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    #getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$1(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    #getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;
    invoke-static {v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$2(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Lcn/domob/android/ads/DomobAdView;

    move-result-object v2

    #calls: Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$3(Lcom/adsmogo/adapters/sdk/DomobAdapter;ZLandroid/view/ViewGroup;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onInterstitialAdLeaveApplication()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "AdsMOGO SDK"

    .line 161
    const-string v1, "DomobSDK onInterstitialAdLeaveApplication"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public onInterstitialAdPresent()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "AdsMOGO SDK"

    .line 140
    const-string v1, "DomobSDK onInterstitialAdPresent"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$0()Lcn/domob/android/ads/DomobInterstitialAd;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    #getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$1(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 114
    const-string v0, "AdsMOGO SDK"

    const-string v1, "intAD or activity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    #getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$1(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-string v0, "AdsMOGO SDK"

    .line 120
    const-string v1, "Domob InterstitialAd Success"

    .line 119
    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    invoke-static {}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$0()Lcn/domob/android/ads/DomobInterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    #getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$1(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobInterstitialAd;->showInterstitialAd(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    #getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;
    invoke-static {v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$2(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Lcn/domob/android/ads/DomobAdView;

    move-result-object v2

    #calls: Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$3(Lcom/adsmogo/adapters/sdk/DomobAdapter;ZLandroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onLandingPageClose()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "AdsMOGO SDK"

    const-string v1, "DomobSDK onLandingPageClose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method public onLandingPageOpen()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "AdsMOGO SDK"

    const-string v1, "DomobSDK onLandingPageOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method
