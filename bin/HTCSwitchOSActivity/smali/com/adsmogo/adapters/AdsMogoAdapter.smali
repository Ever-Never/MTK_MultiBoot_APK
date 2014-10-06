.class public abstract Lcom/adsmogo/adapters/AdsMogoAdapter;
.super Ljava/lang/Object;


# static fields
.field public static final CUSTOM_TYPE_BANNER:I = 0x1

.field public static final CUSTOM_TYPE_FULL:I = 0x3

.field public static final CUSTOM_TYPE_GIF:I = 0x7

.field public static final CUSTOM_TYPE_HTML:I = 0x6

.field public static final CUSTOM_TYPE_ICON:I = 0x2

.field public static final MOGO_TYPE_BANNER:I = 0x1

.field public static final MOGO_TYPE_ICON:I = 0x2

.field public static final NETWORK_TYPE_4THSCREEN:I = 0xd

.field public static final NETWORK_TYPE_ADCHINA:I = 0x15

.field public static final NETWORK_TYPE_ADFONIC:I = 0x46

.field public static final NETWORK_TYPE_ADMOB:I = 0x1

.field public static final NETWORK_TYPE_ADMOGO:I = 0xa

.field public static final NETWORK_TYPE_ADSENSE:I = 0xe

.field public static final NETWORK_TYPE_ADTOUCH:I = 0x1c

.field public static final NETWORK_TYPE_ADUU:I = 0x3c

.field public static final NETWORK_TYPE_ADWO:I = 0x21

.field public static final NETWORK_TYPE_AIRAD:I = 0x20

.field public static final NETWORK_TYPE_ALLYES:I = 0x3b

.field public static final NETWORK_TYPE_API:I = 0x42

.field public static final NETWORK_TYPE_APPMEDIA:I = 0x24

.field public static final NETWORK_TYPE_BAIDU:I = 0x2c

.field public static final NETWORK_TYPE_CUSTOM:I = 0x9

.field public static final NETWORK_TYPE_CUSTOM_EVENT_PLATFORM_1:I = 0x51

.field public static final NETWORK_TYPE_CUSTOM_EVENT_PLATFORM_2:I = 0x52

.field public static final NETWORK_TYPE_CUSTOM_EVENT_PLATFORM_3:I = 0x53

.field public static final NETWORK_TYPE_DOMOB:I = 0x1d

.field public static final NETWORK_TYPE_DOUBLECLICK:I = 0xf

.field public static final NETWORK_TYPE_EVENT:I = 0x11

.field public static final NETWORK_TYPE_EXCHANGE:I = 0x2d

.field public static final NETWORK_TYPE_FRACTAL:I = 0x32

.field public static final NETWORK_TYPE_GENERIC:I = 0x10

.field public static final NETWORK_TYPE_GREYSTRIP:I = 0x7

.field public static final NETWORK_TYPE_INMOBI:I = 0x12

.field public static final NETWORK_TYPE_IZP:I = 0x28

.field public static final NETWORK_TYPE_JIASHI:I = 0x19

.field public static final NETWORK_TYPE_JUDIAN:I = 0x43

.field public static final NETWORK_TYPE_JUMPTAP:I = 0x2

.field public static final NETWORK_TYPE_LIVERAIL:I = 0x5

.field public static final NETWORK_TYPE_LMMOB:I = 0x2e

.field public static final NETWORK_TYPE_LSENSE:I = 0x22

.field public static final NETWORK_TYPE_MDOTM:I = 0xc

.field public static final NETWORK_TYPE_MEDIALETS:I = 0x4

.field public static final NETWORK_TYPE_MILLENNIAL:I = 0x6

.field public static final NETWORK_TYPE_MOBCLIX:I = 0xb

.field public static final NETWORK_TYPE_MOBISAGE:I = 0x1f

.field public static final NETWORK_TYPE_MOBWIN:I = 0x35

.field public static final NETWORK_TYPE_MOGO:I = 0x1b

.field public static final NETWORK_TYPE_MOMARK:I = 0x45

.field public static final NETWORK_TYPE_Midi:I = 0x3f

.field public static final NETWORK_TYPE_OWBO:I = 0x17

.field public static final NETWORK_TYPE_PREMIUMAD:I = 0x30

.field public static final NETWORK_TYPE_QUATTRO:I = 0x8

.field public static final NETWORK_TYPE_RECOMMENDAD:I = 0x36

.field public static final NETWORK_TYPE_SMAATO:I = 0x23

.field public static final NETWORK_TYPE_SMART:I = 0x1a

.field public static final NETWORK_TYPE_SUIZONG:I = 0x33

.field public static final NETWORK_TYPE_UM:I = 0x37

.field public static final NETWORK_TYPE_VIDEOEGG:I = 0x3

.field public static final NETWORK_TYPE_VPON:I = 0x1e

.field public static final NETWORK_TYPE_WEIQIAN:I = 0x38

.field public static final NETWORK_TYPE_WINSMEDIA:I = 0x34

.field public static final NETWORK_TYPE_WIYUN:I = 0x16

.field public static final NETWORK_TYPE_WWWUMENG:I = 0x3e

.field public static final NETWORK_TYPE_YOUMI:I = 0x18

.field public static final NETWORK_TYPE_ZESTADZ:I = 0x14

.field public static final NETWORK_TYPE_ZHIDIAN:I = 0x2f


# instance fields
.field protected RIBAdcount:Lcom/adsmogo/controller/count/AdsCount;

.field private a:Lcom/adsmogo/model/obj/Ration;

.field protected final adMogoLayoutReference:Ljava/lang/ref/WeakReference;

.field protected adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

.field protected adsMogoCoreReference:Ljava/lang/ref/WeakReference;

.field private b:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->a:Lcom/adsmogo/model/obj/Ration;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->a:Lcom/adsmogo/model/obj/Ration;

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 0

    return-void
.end method

.method public abstract click()Lcom/adsmogo/model/obj/Ration;
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public abstract finish()V
.end method

.method public getAdsMogoCore()Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getAdsMogoCoreListener()Lcom/adsmogo/controller/listener/AdsMogoCoreListener;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    return-object v0
.end method

.method public getRation()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->a:Lcom/adsmogo/model/obj/Ration;

    return-object v0
.end method

.method public abstract handle()V
.end method

.method public onPageComplete()V
    .locals 0

    return-void
.end method

.method public requestTimeOut()V
    .locals 0

    return-void
.end method

.method public setAdCount(Lcom/adsmogo/controller/count/AdsCount;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->RIBAdcount:Lcom/adsmogo/controller/count/AdsCount;

    return-void
.end method

.method public setAdsMogoCore(Lcom/adsmogo/controller/AdsMogoCore;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setAdsMogoCoreListener(Lcom/adsmogo/controller/listener/AdsMogoCoreListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    return-void
.end method

.method public setRation(Lcom/adsmogo/model/obj/Ration;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->a:Lcom/adsmogo/model/obj/Ration;

    return-void
.end method

.method public shoutdownTimer()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->b:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 1

    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->startTimer(I)V

    return-void
.end method

.method public startTimer(I)V
    .locals 4

    if-gez p1, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "startTimer time < 0"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->b:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->b:Ljava/util/Timer;

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/adsmogo/adapters/AdsMogoAdapter;->b:Ljava/util/Timer;

    new-instance v1, Lcom/adsmogo/adapters/a;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/a;-><init>(Lcom/adsmogo/adapters/AdsMogoAdapter;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
