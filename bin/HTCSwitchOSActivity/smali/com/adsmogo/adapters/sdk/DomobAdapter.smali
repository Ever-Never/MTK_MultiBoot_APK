.class public Lcom/adsmogo/adapters/sdk/DomobAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;
.source "DomobAdapter.java"


# static fields
.field private static intAD:Lcn/domob/android/ads/DomobInterstitialAd; = null

.field public static final versionCode:I = 0x68


# instance fields
.field private activity:Landroid/app/Activity;

.field private adView:Lcn/domob/android/ads/DomobAdView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 42
    const-string v3, "domob Loaded"

    const-string v4, "Version:104"

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    :try_start_0
    const-string v3, "com.adsmogo.adapters.AdsMogoAdapterFactory"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "getLoadedMap"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 51
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/HashMap;

    .line 53
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    sput-object v5, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    .line 37
    return-void

    .line 54
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0
    .parameter "adMogoLayout"
    .parameter "ration"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V

    .line 66
    return-void
.end method

.method static synthetic access$0()Lcn/domob/android/ads/DomobInterstitialAd;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Lcn/domob/android/ads/DomobAdView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsmogo/adapters/sdk/DomobAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$4(Lcom/adsmogo/adapters/sdk/DomobAdapter;Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    return-void
.end method

.method private sendResult(ZLandroid/view/ViewGroup;)V
    .locals 4
    .parameter "isSucceed"
    .parameter "adView"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->shoutdownTimer()V

    .line 297
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/adview/AdsMogoLayout;

    .line 298
    .local v1, adsMogoLayout:Lcom/adsmogo/adview/AdsMogoLayout;
    if-nez v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v2, v1, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 302
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v2, :cond_0

    .line 307
    if-nez p1, :cond_2

    .line 308
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v2, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    .line 313
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    .line 310
    :cond_2
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    .line 311
    const/16 v3, 0x1d

    .line 310
    invoke-interface {v2, p2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;I)V

    goto :goto_1
.end method


# virtual methods
.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    if-eqz v0, :cond_0

    .line 267
    iput-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    .line 270
    :cond_0
    iput-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    .line 271
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Domob Finished"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public handle()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 72
    :try_start_0
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    .line 73
    .local v0, adMogoLayout:Lcom/adsmogo/adview/AdsMogoLayout;
    if-nez v0, :cond_1

    .line 259
    .end local v0           #adMogoLayout:Lcom/adsmogo/adview/AdsMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v0       #adMogoLayout:Lcom/adsmogo/adview/AdsMogoLayout;
    :cond_1
    iget-object v10, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    .line 78
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    if-eqz v10, :cond_0

    .line 81
    iget-object v10, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v10, v10, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    .line 82
    invoke-virtual {v10}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v6

    .line 83
    .local v6, extra:Lcom/adsmogo/model/obj/Extra;
    iget v10, v6, Lcom/adsmogo/model/obj/Extra;->bgRed:I

    iget v11, v6, Lcom/adsmogo/model/obj/Extra;->bgGreen:I

    iget v12, v6, Lcom/adsmogo/model/obj/Extra;->bgBlue:I

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 85
    .local v3, bgColor:I
    iget-object v10, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v10}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    const/16 v11, 0x80

    if-ne v10, v11, :cond_5

    .line 87
    const/16 v10, 0x7530

    :try_start_1
    invoke-virtual {p0, v10}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->startTimer(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :goto_1
    :try_start_2
    const-string v1, "300x250"

    .line 94
    .local v1, adSize:Ljava/lang/String;
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getWidthAndHeight(Landroid/content/Context;)[I

    move-result-object v9

    .line 96
    .local v9, wh:[I
    array-length v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 97
    const/4 v10, 0x0

    aget v10, v9, v10

    const/16 v11, 0x258

    if-lt v10, v11, :cond_2

    .line 98
    const-string v1, "600x500"

    .line 102
    :cond_2
    sget-object v10, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    if-nez v10, :cond_3

    .line 103
    new-instance v10, Lcn/domob/android/ads/DomobInterstitialAd;

    iget-object v11, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v12

    iget-object v12, v12, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v10, v11, v12, v1}, Lcn/domob/android/ads/DomobInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    .line 108
    :cond_3
    sget-object v10, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    new-instance v11, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;

    invoke-direct {v11, p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;-><init>(Lcom/adsmogo/adapters/sdk/DomobAdapter;)V

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/DomobInterstitialAd;->setInterstitialAdListener(Lcn/domob/android/ads/DomobInterstitialAdListener;)V

    .line 167
    sget-object v10, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    invoke-virtual {v10}, Lcn/domob/android/ads/DomobInterstitialAd;->loadInterstitialAd()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 252
    .end local v0           #adMogoLayout:Lcom/adsmogo/adview/AdsMogoLayout;
    .end local v1           #adSize:Ljava/lang/String;
    .end local v3           #bgColor:I
    .end local v6           #extra:Lcom/adsmogo/model/obj/Extra;
    .end local v9           #wh:[I
    :catch_0
    move-exception v5

    .line 253
    .local v5, e:Ljava/lang/Exception;
    const-string v10, "AdsMOGO SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "domob err"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v10, :cond_4

    .line 255
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v10, v14}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    .line 257
    :cond_4
    iput-object v14, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto/16 :goto_0

    .line 88
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v0       #adMogoLayout:Lcom/adsmogo/adview/AdsMogoLayout;
    .restart local v3       #bgColor:I
    .restart local v6       #extra:Lcom/adsmogo/model/obj/Extra;
    :catch_1
    move-exception v5

    .line 89
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v10, "AdsMOGO SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "startTimer(time) err "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->startTimer()V

    goto :goto_1

    .line 169
    .end local v5           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->startTimer()V

    .line 170
    new-instance v10, Lcn/domob/android/ads/DomobAdView;

    iget-object v11, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v12

    iget-object v12, v12, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    .line 171
    const-string v13, "320x50"

    invoke-direct {v10, v11, v12, v13}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    .line 172
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    new-instance v11, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;

    invoke-direct {v11, p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;-><init>(Lcom/adsmogo/adapters/sdk/DomobAdapter;)V

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/DomobAdView;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 220
    invoke-static {}, Lcom/adsmogo/util/AdsMogoTargeting;->getGender()Lcom/adsmogo/util/Gender;

    move-result-object v7

    .line 222
    .local v7, gender:Lcom/adsmogo/util/Gender;
    sget-object v10, Lcom/adsmogo/util/Gender;->FEMALE:Lcom/adsmogo/util/Gender;

    if-ne v7, v10, :cond_9

    .line 223
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    const-string v11, "female"

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/DomobAdView;->setUserGender(Ljava/lang/String;)V

    .line 229
    :cond_6
    :goto_2
    invoke-static {}, Lcom/adsmogo/util/AdsMogoTargeting;->getBirthDate()Ljava/util/GregorianCalendar;

    move-result-object v4

    .line 230
    .local v4, birthDate:Ljava/util/GregorianCalendar;
    if-eqz v4, :cond_7

    .line 231
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/DomobAdView;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 234
    :cond_7
    invoke-static {}, Lcom/adsmogo/util/AdsMogoTargeting;->getPostalCode()Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, postalCode:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 236
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v10, v8}, Lcn/domob/android/ads/DomobAdView;->setUserPostcode(Ljava/lang/String;)V

    .line 239
    :cond_8
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v10, v3}, Lcn/domob/android/ads/DomobAdView;->setBackgroundColor(I)V

    .line 241
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 242
    const/4 v10, -0x2

    .line 243
    const/4 v11, -0x2

    .line 241
    invoke-direct {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v2, adViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    .line 245
    const/4 v11, -0x1

    .line 244
    invoke-virtual {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0, v10, v2}, Lcom/adsmogo/adview/AdsMogoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    const-string v10, "AdsMOGO SDK"

    const-string v11, "adViewRequest"

    invoke-static {v10, v11}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v10}, Lcn/domob/android/ads/DomobAdView;->requestAdForAggregationPlatform()V

    goto/16 :goto_0

    .line 224
    .end local v2           #adViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #birthDate:Ljava/util/GregorianCalendar;
    .end local v8           #postalCode:Ljava/lang/String;
    :cond_9
    sget-object v10, Lcom/adsmogo/util/Gender;->MALE:Lcom/adsmogo/util/Gender;

    if-ne v7, v10, :cond_6

    .line 225
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    const-string v11, "male"

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/DomobAdView;->setUserGender(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public requestTimeOut()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "AdsMOGO SDK"

    const-string v1, "domob time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 283
    return-void
.end method
