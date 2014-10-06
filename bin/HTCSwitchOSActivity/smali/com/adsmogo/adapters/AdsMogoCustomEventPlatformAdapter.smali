.class public abstract Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# instance fields
.field private a:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CustomEventPlatform Loaded type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CustomEventPlatform getAPPID error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addClickCount()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    :cond_0
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public convertToScreenPixels(Landroid/app/Activity;I)I
    .locals 2

    invoke-static {p1}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    return v0
.end method

.method public final finish()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->onFinish()V

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CustomEventPlatform finishRun error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAPPID_1()Ljava/lang/String;
    .locals 1

    const-string v0, "APPID-1"

    invoke-direct {p0, v0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAPPID_2()Ljava/lang/String;
    .locals 1

    const-string v0, "APPID-2"

    invoke-direct {p0, v0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdsMogoActivity()Landroid/app/Activity;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :cond_0
    return-object v0
.end method

.method public getAdsMogoExtra()Lcom/adsmogo/model/obj/Extra;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getAdsMogoLayout()Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v1}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getAdsMogoLayout()Lcom/adsmogo/adview/AdsMogoLayout;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    :cond_0
    return-object v0
.end method

.method public getAdsPlatformName()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget-object v0, v0, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getAdsPlatformStatus()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adsmogo/model/obj/Ration;->testmodel:Z

    :cond_0
    return v0
.end method

.method public final handle()V
    .locals 4

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getAdsMogoLayout()Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getAdsMogoActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "CustomEventPlatform adMogoLayout is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "CustomEventPlatform activity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v2, "AdsMOGO SDK"

    const-string v3, "CustomEventPlatform in handle"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->onHandle(Lcom/adsmogo/adview/AdsMogoLayout;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CustomEventPlatform handleRun error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0
.end method

.method public isBannerAd()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getAdsMogoLayout()Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isFullScreenAd()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getAdsMogoLayout()Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract onFinish()V
.end method

.method public abstract onHandle(Lcom/adsmogo/adview/AdsMogoLayout;Landroid/app/Activity;)V
.end method

.method public requestAdFail(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget v2, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->requestAdStatus(Landroid/view/ViewGroup;IIIZ)V

    return-void
.end method

.method public requestAdStatus(Landroid/view/ViewGroup;IIIZ)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getAdsMogoActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getAdsMogoLayout()Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getAdsMogoActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz p5, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adsmogo/controller/AdsMogoCore;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/adsmogo/controller/AdsMogoCore;->requestAdSuccess(Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Lcom/adsmogo/controller/AdsMogoCore;->requestAdFail(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method public requestAdSuccess(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget v2, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->requestAdStatus(Landroid/view/ViewGroup;IIIZ)V

    return-void
.end method

.method public requestAdSuccess(Landroid/view/ViewGroup;II)V
    .locals 6

    invoke-virtual {p0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget v2, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->requestAdStatus(Landroid/view/ViewGroup;IIIZ)V

    return-void
.end method

.method public requestTimeOut()V
    .locals 0

    return-void
.end method

.method public shutdownTimer()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->a:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->a:Ljava/util/Timer;

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->a:Ljava/util/Timer;

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->a:Ljava/util/Timer;

    new-instance v1, Lcom/adsmogo/adapters/b;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/b;-><init>(Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
