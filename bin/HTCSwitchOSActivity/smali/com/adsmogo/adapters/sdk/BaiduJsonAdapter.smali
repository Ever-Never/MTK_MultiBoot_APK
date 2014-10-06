.class public Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;
.source "BaiduJsonAdapter.java"

# interfaces
.implements Lcom/baidu/mobads/AdViewListener;


# static fields
.field public static final versionCode:I = 0x67


# instance fields
.field private activity:Landroid/app/Activity;

.field adView:Lcom/baidu/mobads/AdView;

.field adViewrelativeLayout:Landroid/widget/RelativeLayout;

.field extra:Lcom/adsmogo/model/obj/Extra;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    const-string v3, "baidu Loaded"

    const-string v4, "Version:103"

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    :try_start_0
    const-string v3, "com.adsmogo.adapters.AdsMogoAdapterFactory"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "getLoadedMap"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 47
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    check-cast v1, Ljava/util/HashMap;

    .line 49
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 1
    .parameter "adMogoLayout"
    .parameter "ration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V

    .line 67
    iget-object v0, p1, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->activity:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method private sendResult(ZLandroid/view/ViewGroup;)V
    .locals 4
    .parameter "isSucceed"
    .parameter "adView"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->shoutdownTimer()V

    .line 153
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/adview/AdsMogoLayout;

    .line 154
    .local v1, adsMogoLayout:Lcom/adsmogo/adview/AdsMogoLayout;
    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v2, v1, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 158
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v2, :cond_0

    .line 163
    if-nez p1, :cond_2

    .line 164
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v2, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    .line 169
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    .line 167
    const/16 v3, 0x2c

    .line 166
    invoke-interface {v2, p2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;I)V

    goto :goto_1
.end method


# virtual methods
.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adView:Lcom/baidu/mobads/AdView;

    .line 141
    const-string v0, "AdsMOGO SDK"

    const-string v1, "BaiDu Finished"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public handle()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 74
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adsmogo/adview/AdsMogoLayout;

    .line 75
    .local v2, adMogoLayout:Lcom/adsmogo/adview/AdsMogoLayout;
    if-nez v2, :cond_1

    .line 76
    const-string v10, "AdsMOGO SDK"

    const-string v11, "adMogoLayout get fail"

    invoke-static {v10, v11}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v10, v2, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 80
    .local v5, context:Landroid/content/Context;
    if-nez v5, :cond_2

    .line 81
    const-string v10, "AdsMOGO SDK"

    const-string v11, "context get fail"

    invoke-static {v10, v11}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_2
    const/16 v10, 0x7530

    :try_start_0
    invoke-virtual {p0, v10}, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->startTimer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_1
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v10

    iget-object v10, v10, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v4, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    .local v4, baiduKeyObj:Lorg/json/JSONObject;
    const-string v10, "AppID"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, APP_ID:Ljava/lang/String;
    const-string v10, "AppSEC"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, APP_SEC:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 100
    invoke-static {v5, v1}, Lcom/baidu/mobads/AdView;->setAppSec(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    invoke-static {v5, v0}, Lcom/baidu/mobads/AdView;->setAppSid(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    new-instance v10, Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adViewrelativeLayout:Landroid/widget/RelativeLayout;

    .line 105
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    const/4 v10, -0x2

    .line 107
    const/4 v11, -0x2

    .line 105
    invoke-direct {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v3, adViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    .line 109
    const/4 v11, -0x1

    .line 108
    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 111
    new-instance v10, Lcom/baidu/mobads/AdService;

    iget-object v11, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adViewrelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v10, v5, v11, v3, p0}, Lcom/baidu/mobads/AdService;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/baidu/mobads/AdViewListener;)V

    .line 113
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    const/4 v10, -0x2

    .line 115
    const/4 v11, -0x2

    .line 113
    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v9, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 117
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adViewrelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v10, v9}, Lcom/adsmogo/adview/AdsMogoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v10, v2, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v10, v10, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    .line 120
    invoke-virtual {v10}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v10

    .line 119
    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->extra:Lcom/adsmogo/model/obj/Extra;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 121
    .end local v0           #APP_ID:Ljava/lang/String;
    .end local v1           #APP_SEC:Ljava/lang/String;
    .end local v3           #adViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #baiduKeyObj:Lorg/json/JSONObject;
    .end local v9           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v8

    .line 122
    .local v8, jex:Lorg/json/JSONException;
    const-string v10, "AdsMOGO SDK"

    const-string v11, "get Bidu key fail"

    invoke-static {v10, v11, v8}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 123
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adViewrelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v13, v10}, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    .line 87
    .end local v8           #jex:Lorg/json/JSONException;
    :catch_1
    move-exception v6

    .line 88
    .local v6, e:Ljava/lang/Exception;
    const-string v10, "AdsMOGO SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "startTimer(time) err "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->startTimer()V

    goto/16 :goto_1

    .line 125
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 126
    .local v7, ex:Ljava/lang/Exception;
    const-string v10, "AdsMOGO SDK"

    const-string v11, "create BaiduView fail"

    invoke-static {v10, v11, v7}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 127
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adViewrelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v13, v10}, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0
.end method

.method public onAdClick(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 178
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 184
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Baidu Fail msg is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adViewrelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onAdReady(Lcom/baidu/mobads/AdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adView:Lcom/baidu/mobads/AdView;

    .line 194
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Baidu Success"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adViewrelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onAdShow(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 204
    return-void
.end method

.method public onAdSwitch()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onVideoFinish()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onVideoStart()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public requestTimeOut()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->requestTimeOut()V

    .line 229
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Baidu Time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->adViewrelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/BaiduJsonAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 232
    return-void
.end method
