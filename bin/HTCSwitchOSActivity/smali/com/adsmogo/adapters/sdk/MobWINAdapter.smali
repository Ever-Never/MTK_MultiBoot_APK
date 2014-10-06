.class public Lcom/adsmogo/adapters/sdk/MobWINAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;
.source "MobWINAdapter.java"

# interfaces
.implements Lcom/tencent/exmobwin/banner/AdListener;


# static fields
.field public static final versionCode:I = 0x66


# instance fields
.field private activity:Landroid/app/Activity;

.field private adView:Lcom/tencent/exmobwin/banner/TAdView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    const-string v3, "mobwin Loaded"

    const-string v4, "Version:102"

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    :try_start_0
    const-string v3, "com.adsmogo.adapters.AdsMogoAdapterFactory"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "getLoadedMap"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 44
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    check-cast v1, Ljava/util/HashMap;

    .line 46
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/16 v3, 0x35

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0
    .parameter "adMogoLayout"
    .parameter "ration"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V

    .line 57
    return-void
.end method

.method private sendResult(ZLandroid/view/ViewGroup;)V
    .locals 4
    .parameter "isSucceed"
    .parameter "adView"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->shoutdownTimer()V

    .line 161
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/adview/AdsMogoLayout;

    .line 162
    .local v1, adsMogoLayout:Lcom/adsmogo/adview/AdsMogoLayout;
    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v2, v1, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 166
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v2, :cond_0

    .line 171
    if-nez p1, :cond_2

    .line 172
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v2, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    .line 177
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    .line 175
    const/16 v3, 0x35

    .line 174
    invoke-interface {v2, p2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;I)V

    goto :goto_1
.end method


# virtual methods
.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iput-object v2, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    .line 137
    const-string v0, "AdsMOGO SDK"

    const-string v1, "MobWIN Finished"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adView:Lcom/tencent/exmobwin/banner/TAdView;

    if-eqz v0, :cond_0

    .line 139
    iput-object v2, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adView:Lcom/tencent/exmobwin/banner/TAdView;

    .line 141
    :cond_0
    return-void
.end method

.method public handle()V
    .locals 8

    .prologue
    .line 61
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    .line 62
    .local v0, adMogoLayout:Lcom/adsmogo/adview/AdsMogoLayout;
    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v3, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iput-object v3, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->activity:Landroid/app/Activity;

    .line 67
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->startTimer()V

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v4

    iget-object v4, v4, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    const-string v5, "ior0224ace"

    .line 73
    const-string v6, "qq_center"

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    .line 72
    invoke-static {v3, v4, v5, v6, v7}, Lcom/tencent/exmobwin/MobWINManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 74
    new-instance v3, Lcom/tencent/exmobwin/banner/TAdView;

    iget-object v4, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/tencent/exmobwin/banner/TAdView;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adView:Lcom/tencent/exmobwin/banner/TAdView;

    .line 75
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adView:Lcom/tencent/exmobwin/banner/TAdView;

    invoke-virtual {v3, p0}, Lcom/tencent/exmobwin/banner/TAdView;->setAdListener(Lcom/tencent/exmobwin/banner/AdListener;)V

    .line 76
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    const/4 v3, -0x2

    .line 78
    const/4 v4, -0x2

    .line 76
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .local v1, adViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    .line 80
    const/4 v4, -0x1

    .line 79
    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adView:Lcom/tencent/exmobwin/banner/TAdView;

    invoke-virtual {v0, v3, v1}, Lcom/adsmogo/adview/AdsMogoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v1           #adViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v2

    .line 83
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MobWIN failure err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adView:Lcom/tencent/exmobwin/banner/TAdView;

    invoke-direct {p0, v3, v4}, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    .line 73
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onReceiveAd()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "AdsMOGO SDK"

    const-string v1, "MobWIN success"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adView:Lcom/tencent/exmobwin/banner/TAdView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onReceiveFailed(I)V
    .locals 4
    .parameter "errorId"

    .prologue
    .line 101
    const-string v0, ""

    .line 102
    .local v0, errorStr:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 119
    const-string v0, "\u672a\u77e5\u539f\u56e0,\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25\uff01"

    .line 122
    :goto_0
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MobWIN failure, message is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adView:Lcom/tencent/exmobwin/banner/TAdView;

    invoke-direct {p0, v1, v2}, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 126
    :cond_0
    return-void

    .line 104
    :sswitch_0
    const-string v0, "\u7f51\u7edc\u539f\u56e0,\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25\uff01"

    .line 105
    goto :goto_0

    .line 107
    :sswitch_1
    const-string v0, "\u56fe\u7247\u62c9\u53d6\u9519\u8bef,\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25\uff01"

    .line 108
    goto :goto_0

    .line 110
    :sswitch_2
    const-string v0, "\u5e7f\u544a\u670d\u52a1\u4e0d\u53ef\u7528,\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25\uff01"

    .line 111
    goto :goto_0

    .line 113
    :sswitch_3
    const-string v0, "GIF\u52a8\u753b\u89e3\u7801\u5931\u8d25,\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25\uff01"

    .line 114
    goto :goto_0

    .line 116
    :sswitch_4
    const-string v0, "\u670d\u52a1\u5668\u6570\u636e\u5f02\u5e38,\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25\uff01"

    .line 117
    goto :goto_0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_1
        0xd -> :sswitch_4
    .end sparse-switch
.end method

.method public requestTimeOut()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "AdsMOGO SDK"

    const-string v1, "MobWin time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->adView:Lcom/tencent/exmobwin/banner/TAdView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/MobWINAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 132
    return-void
.end method
