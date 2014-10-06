.class Lcn/domob/android/ads/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/q$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/J; = null

.field private static b:Ljava/lang/String; = null

.field private static c:I = 0x0

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field private static h:Ljava/lang/String; = null

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = null

.field private static k:Ljava/lang/String; = null

.field private static l:Ljava/lang/String; = null

.field private static m:Ljava/lang/String; = null

.field private static n:F = 0.0f

.field private static o:F = 0.0f

.field private static p:I = 0x0

.field private static q:I = 0x0

.field private static r:I = 0x0

.field private static s:I = 0x0

.field private static t:Ljava/lang/String; = null

.field private static final u:Ljava/lang/String; = "sdk"

.field private static final v:Ljava/lang/String; = "unknown"

.field private static final w:Ljava/lang/String; = "gprs"

.field private static final x:Ljava/lang/String; = "wifi"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    return-void
.end method

.method protected static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 631
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 632
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 643
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 644
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static C(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 649
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 650
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 651
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 652
    if-eqz v0, :cond_0

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-1"

    goto :goto_0
.end method

.method protected static D(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 659
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 660
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 661
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 662
    if-eqz v0, :cond_0

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-1"

    goto :goto_0
.end method

.method private static E(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 88
    sget-object v0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start to get app info."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcn/domob/android/ads/q;->b:Ljava/lang/String;

    .line 96
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcn/domob/android/ads/q;->c:I

    .line 97
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcn/domob/android/ads/q;->d:Ljava/lang/String;

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 104
    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/q;->e:Ljava/lang/String;

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    sput-object v0, Lcn/domob/android/ads/q;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    sget-object v1, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    const-class v2, Lcn/domob/android/ads/q;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed in getting app info."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_3
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method protected static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 410
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 413
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 415
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 416
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    sget-object v1, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 424
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 117
    sget-object v0, Lcn/domob/android/ads/q;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    invoke-static {p0}, Lcn/domob/android/ads/q;->E(Landroid/content/Context;)V

    .line 119
    sget-object v0, Lcn/domob/android/ads/q;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    sget-object v0, Lcn/domob/android/ads/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(IZ)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 610
    if-eqz p1, :cond_2

    .line 611
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, p0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 614
    goto :goto_0

    .line 617
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, p0, :cond_0

    move v0, v1

    .line 620
    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 220
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_0

    .line 225
    sget-object v1, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already insalled pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return v0

    .line 228
    :catch_0
    move-exception v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 128
    sget-object v0, Lcn/domob/android/ads/q;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    invoke-static {p0}, Lcn/domob/android/ads/q;->E(Landroid/content/Context;)V

    .line 132
    :cond_0
    sget v0, Lcn/domob/android/ads/q;->c:I

    return v0
.end method

.method protected static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 429
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static c()I
    .locals 1

    .prologue
    .line 588
    invoke-static {}, Lcn/domob/android/ads/q$a;->a()Lcn/domob/android/ads/q$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/q$a;->a(Lcn/domob/android/ads/q$a;)I

    move-result v0

    return v0
.end method

.method protected static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 136
    sget-object v0, Lcn/domob/android/ads/q;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    invoke-static {p0}, Lcn/domob/android/ads/q;->E(Landroid/content/Context;)V

    .line 140
    :cond_0
    sget-object v0, Lcn/domob/android/ads/q;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected static d()I
    .locals 1

    .prologue
    .line 592
    invoke-static {}, Lcn/domob/android/ads/q$a;->a()Lcn/domob/android/ads/q$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/q$a;->b(Lcn/domob/android/ads/q$a;)I

    move-result v0

    return v0
.end method

.method protected static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 144
    sget-object v0, Lcn/domob/android/ads/q;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 145
    invoke-static {p0}, Lcn/domob/android/ads/q;->E(Landroid/content/Context;)V

    .line 148
    :cond_0
    sget-object v0, Lcn/domob/android/ads/q;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected static e()J
    .locals 2

    .prologue
    .line 596
    invoke-static {}, Lcn/domob/android/ads/q$a;->a()Lcn/domob/android/ads/q$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/q$a;->c(Lcn/domob/android/ads/q$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 152
    sget-object v0, Lcn/domob/android/ads/q;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcn/domob/android/ads/H;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcn/domob/android/ads/H;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcn/domob/android/ads/H;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/q;->m:Ljava/lang/String;

    .line 157
    :cond_0
    sget-object v0, Lcn/domob/android/ads/q;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Lcn/domob/android/ads/J;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    return-object v0
.end method

.method protected static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 162
    const-string v0, "_"

    .line 163
    sget-object v0, Lcn/domob/android/ads/q;->l:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 164
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    const-string v0, "android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 175
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :goto_0
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 187
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :cond_0
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 193
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_1

    .line 195
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    :cond_1
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/q;->l:Ljava/lang/String;

    .line 206
    sget-object v0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/F;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/domob/android/ads/q;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    :cond_2
    sget-object v0, Lcn/domob/android/ads/q;->l:Ljava/lang/String;

    return-object v0

    .line 177
    :cond_3
    const-string v0, "1.5"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 237
    sget-object v0, Lcn/domob/android/ads/q;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 238
    invoke-static {p0}, Lcn/domob/android/ads/q;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    sget-object v0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    const-string v1, "Use emulator id"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 240
    const-string v0, "-1,-1,emulator"

    sput-object v0, Lcn/domob/android/ads/q;->f:Ljava/lang/String;

    .line 247
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/ads/q;->f:Ljava/lang/String;

    return-object v0

    .line 242
    :cond_1
    sget-object v0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    const-string v1, "Generate device id"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 243
    invoke-static {p0}, Lcn/domob/android/ads/q;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/q;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static h(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 251
    sget-object v0, Lcn/domob/android/ads/q;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 252
    invoke-static {p0}, Lcn/domob/android/ads/q;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/q;->h:Ljava/lang/String;

    .line 254
    :cond_0
    sget-object v0, Lcn/domob/android/ads/q;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/domob/android/ads/q;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static i(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 258
    invoke-static {p0}, Lcn/domob/android/ads/q;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static j(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 262
    invoke-static {p0}, Lcn/domob/android/ads/q;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 264
    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    .line 267
    :cond_0
    const-string v1, "0"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 273
    sget-object v0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    const-string v1, "Start to generate device id"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 274
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 276
    :try_start_0
    invoke-static {p0}, Lcn/domob/android/ads/q;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    :goto_0
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    :goto_1
    invoke-static {p0}, Lcn/domob/android/ads/q;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :goto_2
    sget-object v0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated device id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :cond_0
    :try_start_1
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    sget-object v2, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 289
    const-string v0, "DomobSDK"

    const-string v2, "you must set READ_PHONE_STATE permisson in AndroidManifest.xml"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 290
    :catch_1
    move-exception v0

    .line 291
    sget-object v2, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 298
    :cond_1
    sget-object v0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    const-string v2, "Android ID is null, use -1 instead"

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 299
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method protected static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 307
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/q;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 308
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 310
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/q;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/ads/q;->g:Ljava/lang/String;

    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    sget-object v1, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    const-class v2, Lcn/domob/android/ads/q;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get android ID."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    sget-object v1, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 322
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/q;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/q;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/ads/q;->h:Ljava/lang/String;

    return-object v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    sget-object v1, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    const-class v2, Lcn/domob/android/ads/q;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get android ID."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    sget-object v1, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 341
    sget-object v0, Lcn/domob/android/ads/q;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 342
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 343
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/q;->i:Ljava/lang/String;

    .line 349
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/ads/q;->i:Ljava/lang/String;

    return-object v0

    .line 345
    :cond_1
    const-string v0, "1.5"

    sput-object v0, Lcn/domob/android/ads/q;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 359
    sget-object v0, Lcn/domob/android/ads/q;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 360
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 361
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/q;->j:Ljava/lang/String;

    .line 365
    :cond_0
    sget-object v0, Lcn/domob/android/ads/q;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 369
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 370
    sget-object v0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot access user\'s network type.  Permissions are not set."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    const-string v0, "unknown"

    .line 390
    :cond_0
    :goto_0
    return-object v0

    .line 375
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 376
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_3

    .line 379
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 380
    if-nez v1, :cond_2

    .line 381
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 382
    if-nez v0, :cond_0

    .line 385
    const-string v0, "gprs"

    goto :goto_0

    .line 386
    :cond_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 387
    const-string v0, "wifi"

    goto :goto_0

    .line 390
    :cond_3
    const-string v0, "unknown"

    goto :goto_0
.end method

.method protected static q(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 398
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 399
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 404
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 401
    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    sget-object v2, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 404
    goto :goto_0
.end method

.method protected static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 440
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/q;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 441
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 443
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/q;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/ads/q;->k:Ljava/lang/String;

    return-object v0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    sget-object v1, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 459
    const-string v0, "v"

    sput-object v0, Lcn/domob/android/ads/q;->t:Ljava/lang/String;

    .line 460
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 462
    :cond_0
    const-string v0, "h"

    sput-object v0, Lcn/domob/android/ads/q;->t:Ljava/lang/String;

    .line 465
    :cond_1
    sget-object v0, Lcn/domob/android/ads/q;->t:Ljava/lang/String;

    return-object v0
.end method

.method protected static t(Landroid/content/Context;)F
    .locals 2
    .parameter

    .prologue
    .line 477
    :try_start_0
    sget v0, Lcn/domob/android/ads/q;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 478
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 480
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 481
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 482
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/ads/q;->n:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :cond_0
    :goto_0
    sget v0, Lcn/domob/android/ads/q;->n:F

    return v0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    sget-object v1, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static u(Landroid/content/Context;)F
    .locals 2
    .parameter

    .prologue
    .line 499
    :try_start_0
    sget v0, Lcn/domob/android/ads/q;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 501
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/ads/q;->o:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    :goto_0
    sget v0, Lcn/domob/android/ads/q;->o:F

    return v0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    sget-object v1, Lcn/domob/android/ads/q;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static v(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 511
    invoke-static {p0}, Lcn/domob/android/ads/q;->x(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/android/ads/q;->t(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/domob/android/ads/q;->p:I

    .line 514
    sget v0, Lcn/domob/android/ads/q;->p:I

    return v0
.end method

.method protected static w(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 518
    invoke-static {p0}, Lcn/domob/android/ads/q;->y(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/android/ads/q;->t(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/domob/android/ads/q;->q:I

    .line 521
    sget v0, Lcn/domob/android/ads/q;->q:I

    return v0
.end method

.method protected static x(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 525
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcn/domob/android/ads/q;->r:I

    .line 530
    :cond_0
    sget v0, Lcn/domob/android/ads/q;->r:I

    return v0
.end method

.method protected static y(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 534
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcn/domob/android/ads/q;->s:I

    .line 539
    :cond_0
    sget v0, Lcn/domob/android/ads/q;->s:I

    return v0
.end method

.method protected static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 578
    invoke-static {}, Lcn/domob/android/ads/q$a;->a()Lcn/domob/android/ads/q$a;

    move-result-object v0

    .line 579
    invoke-static {v0, p0}, Lcn/domob/android/ads/q$a;->a(Lcn/domob/android/ads/q$a;Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 580
    if-eqz v1, :cond_0

    .line 581
    invoke-static {v0, v1}, Lcn/domob/android/ads/q$a;->a(Lcn/domob/android/ads/q$a;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 584
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
