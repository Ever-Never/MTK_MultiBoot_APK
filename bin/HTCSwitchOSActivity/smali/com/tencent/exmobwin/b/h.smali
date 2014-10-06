.class public Lcom/tencent/exmobwin/b/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static b:Ljava/lang/String; = null

.field public static c:Z = false

.field private static final d:Ljava/lang/String; = "NetWork"

.field private static final h:I = 0x8

.field private static final i:I = 0x9

.field private static final j:I = 0xa

.field private static l:I

.field private static m:I


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/tencent/exmobwin/b/d;

.field private g:Lcom/tencent/exmobwin/b/a;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/tencent/exmobwin/b/h;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/exmobwin/b/h;->c:Z

    const v0, -0x7e69c116

    sput v0, Lcom/tencent/exmobwin/b/h;->l:I

    const v0, 0x457fac48

    sput v0, Lcom/tencent/exmobwin/b/h;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/exmobwin/b/h;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/exmobwin/b/h;->f:Lcom/tencent/exmobwin/b/d;

    iput-object v0, p0, Lcom/tencent/exmobwin/b/h;->g:Lcom/tencent/exmobwin/b/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/exmobwin/b/h;->k:Z

    iput-object p1, p0, Lcom/tencent/exmobwin/b/h;->e:Landroid/content/Context;

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/tencent/exmobwin/b/h;->l:I

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/exmobwin/b/h;->b:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/tencent/exmobwin/b/h;)Lcom/tencent/exmobwin/b/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/b/h;->g:Lcom/tencent/exmobwin/b/a;

    return-object v0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/tencent/exmobwin/b/h;->m:I

    return v0
.end method


# virtual methods
.method public a(Lcom/tencent/exmobwin/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/b/h;->g:Lcom/tencent/exmobwin/b/a;

    return-void
.end method

.method public c()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/exmobwin/b/h;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "NetWork"

    const-string v1, "register receiver android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v1, Lcom/tencent/exmobwin/b/d;

    invoke-direct {v1, p0}, Lcom/tencent/exmobwin/b/d;-><init>(Lcom/tencent/exmobwin/b/h;)V

    iput-object v1, p0, Lcom/tencent/exmobwin/b/h;->f:Lcom/tencent/exmobwin/b/d;

    iget-object v1, p0, Lcom/tencent/exmobwin/b/h;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/exmobwin/b/h;->f:Lcom/tencent/exmobwin/b/d;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/exmobwin/b/h;->k:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/exmobwin/b/h;->k:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/exmobwin/b/h;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/exmobwin/b/h;->f:Lcom/tencent/exmobwin/b/d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/exmobwin/b/h;->f:Lcom/tencent/exmobwin/b/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/exmobwin/b/h;->k:Z

    const-string v0, "NetWork"

    const-string v1, "unregister receiver android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public e()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/exmobwin/b/h;->e:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public f()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/exmobwin/b/h;->d()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/exmobwin/b/h;->c:Z

    iput-object v1, p0, Lcom/tencent/exmobwin/b/h;->e:Landroid/content/Context;

    iput-object v1, p0, Lcom/tencent/exmobwin/b/h;->f:Lcom/tencent/exmobwin/b/d;

    iput-object v1, p0, Lcom/tencent/exmobwin/b/h;->g:Lcom/tencent/exmobwin/b/a;

    return-void
.end method
