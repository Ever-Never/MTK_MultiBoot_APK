.class public Lcom/adsmogo/util/AdsMogoRequestDomain;
.super Ljava/lang/Object;


# static fields
.field public static final firstCfgDomain:Ljava/lang/String; = "http://cfg."

.field public static final firstClkDomain:Ljava/lang/String; = "http://clk."

.field public static final firstCusDomain:Ljava/lang/String; = "http://cus."

.field public static final firstImpDomain:Ljava/lang/String; = "http://imp."

.field public static final firstOnlineUpdateJarDomain:Ljava/lang/String; = "http://update.adsmogo.net/"

.field public static final firstOnlineUpdateJarTestDomain:Ljava/lang/String; = "http://121.28.245.94:9999/"

.field public static isTestModel:Z = false

.field public static final secondDomain:Ljava/lang/String; = "adsmogo."

.field public static final secondOnlineUpdateJarFileDomain:Ljava/lang/String; = "LiveUpdate.mh"

.field public static final secondOnlineUpdateJarSignDomain:Ljava/lang/String; = "CheckLiveUpdate.mh"

.field public static final secondTestDomain:Ljava/lang/String; = "himogo."

.field public static final thirdDomains:Ljava/util/ArrayList; = null

.field public static urlAction:Ljava/lang/String; = null

.field public static final urlAudiance:Ljava/lang/String; = "/Audiance.ashx?aid=%s&uid=%s&vr=%s&pn=%s&uv=%s&uc=%s&nt=%s&mn=%s&os=%s&dn=%s&si=%s%s&ra=%s&cn=%s&lc=%s&ll=%s"

.field public static urlCheckApp:Ljava/lang/String;

.field public static urlClick:Ljava/lang/String;

.field public static urlConfig:Ljava/lang/String;

.field public static urlCustom:Ljava/lang/String;

.field public static urlExchange:Ljava/lang/String;

.field public static urlGetIp:Ljava/lang/String;

.field public static urlMogo:Ljava/lang/String;

.field public static urlPremium:Ljava/lang/String;

.field public static urlRecommend:Ljava/lang/String;

.field public static urlRecordData:Ljava/lang/String;

.field public static urlStat:Ljava/lang/String;

.field public static urlUpdate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    sput-boolean v3, Lcom/adsmogo/util/AdsMogoRequestDomain;->isTestModel:Z

    new-instance v0, Lcom/adsmogo/util/d;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "org"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "mobi"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "net"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/adsmogo/util/d;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->thirdDomains:Ljava/util/ArrayList;

    const-string v0, "/getinfo.ashx?appid=%s&appver=%d&adtype=%s&client=2&country=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlConfig:Ljava/lang/String;

    const-string v0, "/Stat.ashx?aid=%s&cn=%s&uuid=%s&adtype=%s&lc=%s&dev=%s&uv=%s&nw=%s&bk=%s&v=%s&vr=%s&mac=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlStat:Ljava/lang/String;

    const-string v0, "/AppVersion.ashx?appid=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlUpdate:Ljava/lang/String;

    const-string v0, "/custom.ashx?appid=%s&nid=%s&uuid=%s&client=2&country=%s&adtype=%s&appver=299"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlCustom:Ljava/lang/String;

    const-string v0, "/Exchange.ashx?appid=%s&adtype=%s&country=%s&client=2&uuid=%s&network=%s&appver=299"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlExchange:Ljava/lang/String;

    const-string v0, "/MogoAD.ashx?appid=%s&nid=%s&adtype=%s&country=%s&client=2&uuid=%s&network=%s&bf=%d&ver=299"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlMogo:Ljava/lang/String;

    const-string v0, "/Premium.ashx?appid=%s&nid=%s&uuid=%s&client=2&adtype=%s&country=%s&nt=%s&appver=299"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlPremium:Ljava/lang/String;

    const-string v0, "/Recommend.ashx?appid=%s&nid=%s&uuid=%s&client=2&adtype=%s&country=%s&nt=%s&appver=299"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlRecommend:Ljava/lang/String;

    const-string v0, "/batch.ashx"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlRecordData:Ljava/lang/String;

    const-string v0, "/exclick.ashx?appid=%s&appver=%d&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&country=%s%s&mac=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlClick:Ljava/lang/String;

    const-string v0, "/Action.ashx?aid=%s&cid=%s&uid=%s&cn=%s&at=%s&t=%s&ct=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlAction:Ljava/lang/String;

    const-string v0, "/GetIP.ashx"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlGetIp:Ljava/lang/String;

    const-string v0, "/InstalledApp.ashx?uuid=%s&pn=%s&mac=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlCheckApp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOnlineUpdateJarDomain()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->isTestModel:Z

    if-eqz v0, :cond_0

    const-string v0, "http://121.28.245.94:9999/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://update.adsmogo.net/"

    goto :goto_0
.end method

.method public static getSecondDomain()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->isTestModel:Z

    if-eqz v0, :cond_0

    const-string v0, "himogo."

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "adsmogo."

    goto :goto_0
.end method

.method public static getThirdDomains()Ljava/util/ArrayList;
    .locals 4

    sget-boolean v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->isTestModel:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adsmogo/util/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/adsmogo/util/d;-><init>([Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->thirdDomains:Ljava/util/ArrayList;

    goto :goto_0
.end method
