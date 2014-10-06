.class Lcn/domob/android/ads/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/E$a;
.implements Lcn/domob/android/ads/I$a;
.implements Lcn/domob/android/ads/h$a;
.implements Lcn/domob/android/ads/k$a;
.implements Lcn/domob/android/ads/n$a;
.implements Lcn/domob/android/ads/r$a;
.implements Lcn/domob/android/ads/x$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/i$b;,
        Lcn/domob/android/ads/i$c;,
        Lcn/domob/android/ads/i$a;
    }
.end annotation


# static fields
.field protected static final A:Ljava/lang/String; = "wtai://wp/mc;"

.field private static B:Lcn/domob/android/ads/J; = null

.field protected static final l:Ljava/lang/String; = "domob"

.field protected static final m:Ljava/lang/String; = "mraid"

.field protected static final n:Ljava/lang/String; = "inapp"

.field protected static final o:Ljava/lang/String; = "download"

.field protected static final p:Ljava/lang/String; = "report"

.field protected static final q:Ljava/lang/String; = "launch"

.field protected static final r:Ljava/lang/String; = "custom"

.field protected static final s:Ljava/lang/String; = "expand"

.field protected static final t:Ljava/lang/String; = "close"

.field protected static final u:Ljava/lang/String; = "clk"

.field protected static final v:Ljava/lang/String; = "imp"

.field protected static final w:Ljava/lang/String; = "event"

.field protected static final x:Ljava/lang/String; = "visit"

.field protected static final y:Ljava/lang/String; = "url"

.field protected static final z:Ljava/lang/String; = "phase"


# instance fields
.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:I

.field private P:Landroid/os/Handler;

.field private Q:J

.field private R:J

.field protected a:Landroid/content/Context;

.field protected b:Landroid/content/Context;

.field protected c:Lcn/domob/android/ads/DomobAdView;

.field protected d:Lcn/domob/android/ads/l;

.field protected e:Lcn/domob/android/ads/i$b;

.field protected f:Lcn/domob/android/ads/b;

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Lcn/domob/android/ads/i$a;

.field protected k:Lcn/domob/android/ads/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcn/domob/android/ads/i;->D:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcn/domob/android/ads/i;->F:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcn/domob/android/ads/i;->G:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcn/domob/android/ads/i;->H:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/i;->I:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/i;->J:Ljava/lang/String;

    .line 65
    iput-boolean v3, p0, Lcn/domob/android/ads/i;->K:Z

    .line 66
    iput-boolean v1, p0, Lcn/domob/android/ads/i;->L:Z

    .line 67
    iput-boolean v1, p0, Lcn/domob/android/ads/i;->M:Z

    .line 68
    iput-boolean v3, p0, Lcn/domob/android/ads/i;->N:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->P:Landroid/os/Handler;

    .line 71
    iput-wide v4, p0, Lcn/domob/android/ads/i;->Q:J

    .line 72
    iput-wide v4, p0, Lcn/domob/android/ads/i;->R:J

    .line 73
    iput-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    .line 74
    iput-object v2, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    .line 75
    new-instance v0, Lcn/domob/android/ads/i$b;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/i$b;-><init>(Lcn/domob/android/ads/i;)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/i$b;

    .line 78
    iput-boolean v3, p0, Lcn/domob/android/ads/i;->g:Z

    .line 79
    iput-boolean v3, p0, Lcn/domob/android/ads/i;->h:Z

    .line 80
    iput-boolean v3, p0, Lcn/domob/android/ads/i;->i:Z

    .line 81
    sget-object v0, Lcn/domob/android/ads/i$a;->a:Lcn/domob/android/ads/i$a;

    iput-object v0, p0, Lcn/domob/android/ads/i;->j:Lcn/domob/android/ads/i$a;

    .line 82
    sget-object v0, Lcn/domob/android/ads/i$c;->c:Lcn/domob/android/ads/i$c;

    iput-object v0, p0, Lcn/domob/android/ads/i;->k:Lcn/domob/android/ads/i$c;

    .line 110
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Init DomobAdController."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iput-object p1, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    .line 114
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    iput-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/content/Context;

    .line 117
    :cond_0
    iput-object p2, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    .line 118
    if-nez p2, :cond_1

    .line 119
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    .line 121
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/j;->b(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcn/domob/android/ads/i;->I()V

    .line 125
    invoke-direct {p0}, Lcn/domob/android/ads/i;->J()V

    .line 127
    iget-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcn/domob/android/ads/h;->a(Landroid/content/Context;Lcn/domob/android/ads/h$a;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcn/domob/android/ads/i;->D:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcn/domob/android/ads/i;->F:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcn/domob/android/ads/i;->G:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcn/domob/android/ads/i;->H:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/i;->I:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/i;->J:Ljava/lang/String;

    .line 65
    iput-boolean v3, p0, Lcn/domob/android/ads/i;->K:Z

    .line 66
    iput-boolean v1, p0, Lcn/domob/android/ads/i;->L:Z

    .line 67
    iput-boolean v1, p0, Lcn/domob/android/ads/i;->M:Z

    .line 68
    iput-boolean v3, p0, Lcn/domob/android/ads/i;->N:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->P:Landroid/os/Handler;

    .line 71
    iput-wide v4, p0, Lcn/domob/android/ads/i;->Q:J

    .line 72
    iput-wide v4, p0, Lcn/domob/android/ads/i;->R:J

    .line 73
    iput-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    .line 74
    iput-object v2, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    .line 75
    new-instance v0, Lcn/domob/android/ads/i$b;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/i$b;-><init>(Lcn/domob/android/ads/i;)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/i$b;

    .line 78
    iput-boolean v3, p0, Lcn/domob/android/ads/i;->g:Z

    .line 79
    iput-boolean v3, p0, Lcn/domob/android/ads/i;->h:Z

    .line 80
    iput-boolean v3, p0, Lcn/domob/android/ads/i;->i:Z

    .line 81
    sget-object v0, Lcn/domob/android/ads/i$a;->a:Lcn/domob/android/ads/i$a;

    iput-object v0, p0, Lcn/domob/android/ads/i;->j:Lcn/domob/android/ads/i$a;

    .line 82
    sget-object v0, Lcn/domob/android/ads/i$c;->c:Lcn/domob/android/ads/i$c;

    iput-object v0, p0, Lcn/domob/android/ads/i;->k:Lcn/domob/android/ads/i$c;

    .line 131
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Init DomobAdController."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    .line 134
    if-nez p1, :cond_0

    .line 135
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    .line 137
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/j;->b(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method static synthetic H()Lcn/domob/android/ads/J;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    return-object v0
.end method

.method private I()V
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcn/domob/android/ads/d;

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    const-string v2, "domob_config"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    const-string v1, "version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "config"

    const-string v3, "{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\"}"

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method private J()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 153
    new-instance v0, Lcn/domob/android/ads/d;

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    const-string v2, "domob_config"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v1

    const-string v2, "cookie_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/j;->c(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v1

    const-string v2, "disable"

    invoke-virtual {v0, v2, v6}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "time"

    invoke-virtual {v0, v5, v6}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/domob/android/ads/j;->a(ZJI)V

    .line 158
    const-string v1, "interval"

    const/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/i;->O:I

    .line 159
    return-void
.end method

.method private K()V
    .locals 8

    .prologue
    const/16 v3, 0x1388

    .line 505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 507
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->c()Ljava/lang/String;

    move-result-object v1

    .line 508
    if-eqz v1, :cond_0

    .line 509
    const-string v2, "cookie_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/j;->c(Ljava/lang/String;)V

    .line 514
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->f()Lcn/domob/android/ads/l$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 522
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->f()Lcn/domob/android/ads/l$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$a;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->f()Lcn/domob/android/ads/l$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$a;->a()I

    move-result v1

    .line 524
    mul-int/lit16 v1, v1, 0x3e8

    .line 526
    if-gtz v1, :cond_5

    .line 527
    const/4 v1, 0x0

    iput v1, p0, Lcn/domob/android/ads/i;->O:I

    .line 534
    :cond_1
    :goto_0
    const-string v1, "interval"

    iget v2, p0, Lcn/domob/android/ads/i;->O:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_2
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->f()Lcn/domob/android/ads/l$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$a;->b()Z

    move-result v1

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 539
    iget-object v4, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v4}, Lcn/domob/android/ads/l;->f()Lcn/domob/android/ads/l$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/l$a;->c()I

    move-result v4

    .line 540
    const-string v5, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v5, "disable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v5, "time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v5, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disable time stamp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    sget-object v5, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disable time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lcn/domob/android/ads/j;->a(ZJI)V

    .line 548
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->f()Lcn/domob/android/ads/l$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 549
    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v2}, Lcn/domob/android/ads/l;->f()Lcn/domob/android/ads/l$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$a;->f()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/j;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 551
    const-string v3, "version"

    iget-object v4, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v4}, Lcn/domob/android/ads/l;->f()Lcn/domob/android/ads/l$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/l$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v3, "config"

    iget-object v4, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v4}, Lcn/domob/android/ads/l;->f()Lcn/domob/android/ads/l$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/l$a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcn/domob/android/ads/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 558
    new-instance v1, Lcn/domob/android/ads/d;

    iget-object v2, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    const-string v3, "domob_config"

    invoke-direct {v1, v2, v3}, Lcn/domob/android/ads/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 559
    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d;->a(Ljava/util/HashMap;)V

    .line 561
    :cond_4
    return-void

    .line 528
    :cond_5
    if-lez v1, :cond_6

    if-ge v1, v3, :cond_6

    .line 529
    iput v3, p0, Lcn/domob/android/ads/i;->O:I

    goto/16 :goto_0

    .line 530
    :cond_6
    if-lt v1, v3, :cond_1

    .line 531
    iput v1, p0, Lcn/domob/android/ads/i;->O:I

    goto/16 :goto_0
.end method

.method private L()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->u()Ljava/lang/String;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/domob/android/ads/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/j;->d(Ljava/lang/String;)V

    .line 693
    :cond_0
    return-void
.end method

.method private M()Z
    .locals 1

    .prologue
    .line 1369
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/i;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/i;->h:Z

    if-nez v0, :cond_0

    .line 1370
    const/4 v0, 0x1

    .line 1373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private N()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1380
    iput-boolean v0, p0, Lcn/domob/android/ads/i;->g:Z

    .line 1381
    iput-boolean v0, p0, Lcn/domob/android/ads/i;->h:Z

    .line 1382
    iput-boolean v0, p0, Lcn/domob/android/ads/i;->i:Z

    .line 1383
    return-void
.end method

.method private a(Lcn/domob/android/ads/H;Lcn/domob/android/ads/l$b$a;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 823
    invoke-virtual {p2}, Lcn/domob/android/ads/l$b$a;->h()I

    move-result v0

    .line 824
    if-gez v0, :cond_3

    .line 825
    const/4 v0, 0x5

    .line 829
    :cond_0
    :goto_0
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expandable timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p1, v0}, Lcn/domob/android/ads/H;->a(I)V

    .line 833
    if-eqz p3, :cond_1

    .line 834
    new-instance v0, Lcn/domob/android/ads/i$3;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/i$3;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/H;->a(Lcn/domob/android/ads/c$b;)V

    .line 863
    :cond_1
    new-instance v0, Lcn/domob/android/ads/i$4;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/i$4;-><init>(Lcn/domob/android/ads/i;Lcn/domob/android/ads/H;)V

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/H;->a(Lcn/domob/android/ads/c$a;)V

    .line 883
    invoke-virtual {p2}, Lcn/domob/android/ads/l$b$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 884
    invoke-static {v0}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 885
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Content type of expandable is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 886
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 901
    :cond_2
    :goto_1
    return-void

    .line 826
    :cond_3
    iget v1, p0, Lcn/domob/android/ads/i;->O:I

    if-le v0, v1, :cond_0

    .line 827
    iget v0, p0, Lcn/domob/android/ads/i;->O:I

    goto :goto_0

    .line 888
    :cond_4
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 889
    invoke-virtual {p2}, Lcn/domob/android/ads/l$b$a;->c()Ljava/lang/String;

    move-result-object v0

    .line 890
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get an DomobWebView instance for EXPANDABLE and load with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 891
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/domob/android/ads/H;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 892
    :cond_5
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    invoke-virtual {p2}, Lcn/domob/android/ads/l$b$a;->d()Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-virtual {p2}, Lcn/domob/android/ads/l$b$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 895
    sget-object v2, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v3, "Get an DomobWebView instance for EXPANDABLE and load data = [%s] with base URL=[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p1, v0, v1}, Lcn/domob/android/ads/H;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcn/domob/android/ads/i;Lcn/domob/android/ads/H;Lcn/domob/android/ads/l$b$a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/H;Lcn/domob/android/ads/l$b$a;Z)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/i;Lcn/domob/android/ads/l$b$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/l$b$a;)V

    return-void
.end method

.method private a(Lcn/domob/android/ads/l$b$a;)V
    .locals 6
    .parameter

    .prologue
    .line 1241
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Show expandable part of current creative."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->g()Lcn/domob/android/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1244
    iget-object v1, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->g()Lcn/domob/android/ads/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/b;->b()Lcn/domob/android/ads/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/c;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1245
    sget-object v2, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v3, "bannerURL:%s, ExURL:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->g()Lcn/domob/android/ads/b;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/m;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/m;->a(Lcn/domob/android/ads/l$b$a;)V

    .line 1248
    return-void
.end method

.method private a(Ljava/lang/String;Lcn/domob/android/ads/r;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1540
    new-instance v0, Lcn/domob/android/ads/z;

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;)V

    .line 1541
    new-instance v4, Lcn/domob/android/ads/z$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/z$c;-><init>(Lcn/domob/android/ads/z;)V

    .line 1542
    invoke-virtual {p2}, Lcn/domob/android/ads/r;->a()Lcn/domob/android/ads/l;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/z$c;->a:Ljava/lang/String;

    .line 1543
    invoke-virtual {p2}, Lcn/domob/android/ads/r;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/z$c;->d:Ljava/lang/String;

    .line 1544
    invoke-virtual {p2}, Lcn/domob/android/ads/r;->d()I

    move-result v1

    iput v1, v4, Lcn/domob/android/ads/z$c;->e:I

    .line 1545
    invoke-virtual {p2}, Lcn/domob/android/ads/r;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/z$c;->f:Ljava/lang/String;

    .line 1546
    invoke-virtual {p2}, Lcn/domob/android/ads/r;->a()Lcn/domob/android/ads/l;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/z$h;->b:Lcn/domob/android/ads/z$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Lcn/domob/android/ads/z$h;Ljava/lang/String;Lcn/domob/android/ads/z$c;Ljava/util/HashMap;)V

    .line 1548
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1480
    new-instance v0, Lcn/domob/android/ads/z;

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;)V

    .line 1481
    new-instance v4, Lcn/domob/android/ads/z$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/z$c;-><init>(Lcn/domob/android/ads/z;)V

    .line 1482
    iput-object p2, v4, Lcn/domob/android/ads/z$c;->d:Ljava/lang/String;

    .line 1483
    iput p3, v4, Lcn/domob/android/ads/z$c;->e:I

    .line 1484
    iput-object p4, v4, Lcn/domob/android/ads/z$c;->f:Ljava/lang/String;

    .line 1486
    const-string v1, "http://e.domob.cn/event_report"

    sget-object v2, Lcn/domob/android/ads/z$h;->e:Lcn/domob/android/ads/z$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Lcn/domob/android/ads/z$h;Ljava/lang/String;Lcn/domob/android/ads/z$c;Ljava/util/HashMap;)V

    .line 1487
    return-void
.end method

.method private b(Lcn/domob/android/ads/l;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 720
    if-eqz p1, :cond_2

    .line 721
    iput-object p1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    .line 723
    invoke-direct {p0}, Lcn/domob/android/ads/i;->K()V

    .line 725
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->z()V

    .line 727
    invoke-direct {p0}, Lcn/domob/android/ads/i;->L()V

    .line 728
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Get ad response successfully."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 792
    :goto_0
    return-void

    .line 730
    :cond_0
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->e()Lcn/domob/android/ads/l$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 731
    const-string v0, "DomobSDK"

    const-string v1, "Response contains error info. Error code is [%d] and error content is [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcn/domob/android/ads/l;->e()Lcn/domob/android/ads/l$c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/l$c;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcn/domob/android/ads/l;->e()Lcn/domob/android/ads/l$c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/l$c;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {p1}, Lcn/domob/android/ads/l;->e()Lcn/domob/android/ads/l$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$c;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 737
    :sswitch_0
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 740
    :sswitch_1
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 743
    :sswitch_2
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INVALID_REQUEST:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 746
    :sswitch_3
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->NO_FILL:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 749
    :sswitch_4
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 755
    :cond_1
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Unexpected resp, Try to request again after refresh interval."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :cond_2
    sparse-switch p2, :sswitch_data_1

    .line 784
    const-string v0, "DomobSDK"

    const-string v1, "Connection Error. Please make sure that your network is available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_1
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "AdResponse instance is null. Try to request again after refresh interval."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 789
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 763
    :sswitch_5
    const-string v0, "DomobSDK"

    const-string v1, "There is no ad response for the request this time."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 766
    :sswitch_6
    const-string v0, "DomobSDK"

    const-string v1, "Bad Request. Please make sure that your publisher ID or any other infomation is correct."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 770
    :sswitch_7
    const-string v0, "DomobSDK"

    const-string v1, "Your publisher ID is forbidden by web server. Please ask domob\'s support for help."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 774
    :sswitch_8
    const-string v0, "DomobSDK"

    const-string v1, "Your publisher ID is not available temporarily, e.g. Your app is being examined and verified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 778
    :sswitch_9
    const-string v0, "DomobSDK"

    const-string v1, "Server Error."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 781
    :sswitch_a
    const-string v0, "DomobSDK"

    const-string v1, "Server Busy."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 735
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
        0xfa0 -> :sswitch_3
        0x1388 -> :sswitch_4
    .end sparse-switch

    .line 761
    :sswitch_data_1
    .sparse-switch
        0xc8 -> :sswitch_5
        0x190 -> :sswitch_6
        0x193 -> :sswitch_7
        0x194 -> :sswitch_8
        0x1f4 -> :sswitch_9
        0x1f6 -> :sswitch_a
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1353
    new-instance v0, Lcn/domob/android/ads/z;

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;)V

    .line 1354
    new-instance v4, Lcn/domob/android/ads/z$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/z$c;-><init>(Lcn/domob/android/ads/z;)V

    .line 1355
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/z$c;->a:Ljava/lang/String;

    .line 1356
    if-eqz p2, :cond_0

    .line 1357
    iput-object p2, v4, Lcn/domob/android/ads/z$c;->h:Ljava/lang/String;

    .line 1360
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/z$h;->c:Lcn/domob/android/ads/z$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Lcn/domob/android/ads/z$h;Ljava/lang/String;Lcn/domob/android/ads/z$c;Ljava/util/HashMap;)V

    .line 1362
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1349
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 1410
    new-instance v0, Lcn/domob/android/ads/z;

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;)V

    .line 1411
    new-instance v4, Lcn/domob/android/ads/z$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/z$c;-><init>(Lcn/domob/android/ads/z;)V

    .line 1412
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/z$c;->a:Ljava/lang/String;

    .line 1413
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/z$h;->h:Lcn/domob/android/ads/z$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Lcn/domob/android/ads/z$h;Ljava/lang/String;Lcn/domob/android/ads/z$c;Ljava/util/HashMap;)V

    .line 1415
    return-void
.end method

.method private n(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1562
    new-instance v0, Lcn/domob/android/ads/z;

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;)V

    .line 1563
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/z$h;->g:Lcn/domob/android/ads/z$h;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Lcn/domob/android/ads/z$h;Ljava/lang/String;Lcn/domob/android/ads/z$c;Ljava/util/HashMap;)V

    .line 1565
    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    .prologue
    .line 696
    iget-object v0, p0, Lcn/domob/android/ads/i;->I:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/i;->I:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 697
    const-string v0, ""

    .line 698
    iget-object v0, p0, Lcn/domob/android/ads/i;->J:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/i;->J:Ljava/lang/String;

    const-string v1, "mraid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const-string v0, "mraid"

    .line 702
    :goto_0
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gen fake ad response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 703
    const-string v1, "{\"sid\":\"search_id\",\"cid\":\"cookie_id\",\"ad\":{\"id\":\"12345\",\"format\":\"%s\",\"ct\":\"url\",\"width\":320,\"height\":50,\"url\":\"%s\",\"content\":\"\",\"base_url\":\"\",\"click_tracker\":\"\",\"imp_tracker\":\"h\",\"event_tracker\":\"\",\"tracker\":\"8ewfqd8ffqwer1325effff342f3444\",\"animation\":1,\"o\":\"h\",\"cls_btn\":0,\"imp_min\":5,\"imp_cls\":8,\"cache\":1440,\"pkg\":\"cn.domob.android.rm.demo\",\"mz_click_tracker\":\"\",\"mz_imp_tracker\":\"\"},\"control\":{\"refresh\":20,\"disable\":false,\"dis_time\":30,\"location\":true,\"ors\":{\"version\":\"2\",\"config\":{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\",\"cn.domob.test\":\"5\"}}}}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcn/domob/android/ads/i;->I:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-static {v0}, Lcn/domob/android/ads/l;->a(Ljava/lang/String;)Lcn/domob/android/ads/l;

    move-result-object v0

    .line 705
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/l;I)V

    .line 710
    :goto_1
    return-void

    .line 701
    :cond_0
    const-string v0, "domob"

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->v()V

    goto :goto_1
.end method

.method public B()V
    .locals 1

    .prologue
    .line 1253
    invoke-direct {p0}, Lcn/domob/android/ads/i;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    const-string v0, "load_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/i;->l(Ljava/lang/String;)V

    .line 1255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/i;->g:Z

    .line 1257
    :cond_0
    return-void
.end method

.method public C()V
    .locals 1

    .prologue
    .line 1261
    invoke-direct {p0}, Lcn/domob/android/ads/i;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    const-string v0, "load_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/i;->l(Ljava/lang/String;)V

    .line 1263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/i;->i:Z

    .line 1265
    :cond_0
    return-void
.end method

.method public D()V
    .locals 1

    .prologue
    .line 1269
    invoke-direct {p0}, Lcn/domob/android/ads/i;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    const-string v0, "load_cancel"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/i;->l(Ljava/lang/String;)V

    .line 1271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/i;->h:Z

    .line 1273
    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/i$7;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/i$7;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1290
    const-string v0, "close_lp"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/i;->l(Ljava/lang/String;)V

    .line 1291
    return-void
.end method

.method public F()V
    .locals 2

    .prologue
    .line 1388
    const-string v0, "la_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/i;->m(Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V

    .line 1392
    :cond_0
    return-void
.end method

.method public G()V
    .locals 1

    .prologue
    .line 1396
    const-string v0, "la_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/i;->m(Ljava/lang/String;)V

    .line 1397
    return-void
.end method

.method protected a()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcn/domob/android/ads/i;->k:Lcn/domob/android/ads/i$c;

    sget-object v1, Lcn/domob/android/ads/i$c;->a:Lcn/domob/android/ads/i$c;

    if-ne v0, v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/i;->j:Lcn/domob/android/ads/i$a;

    sget-object v1, Lcn/domob/android/ads/i$a;->a:Lcn/domob/android/ads/i$a;

    if-ne v0, v1, :cond_3

    .line 177
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->L:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start schedule new request. Refresh interval is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/i;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lcn/domob/android/ads/i;->O:I

    if-nez v0, :cond_2

    .line 180
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "AdView is auto refreshable but interval from ad response is 0. DON\'T SCHEDULE."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/i;->P:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/i$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iget-object v0, p0, Lcn/domob/android/ads/i;->P:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/i$b;

    iget v2, p0, Lcn/domob/android/ads/i;->O:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    sget-object v0, Lcn/domob/android/ads/i$c;->a:Lcn/domob/android/ads/i$c;

    iput-object v0, p0, Lcn/domob/android/ads/i;->k:Lcn/domob/android/ads/i$c;

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/i;->j:Lcn/domob/android/ads/i$a;

    sget-object v1, Lcn/domob/android/ads/i$a;->b:Lcn/domob/android/ads/i$a;

    if-ne v0, v1, :cond_0

    .line 188
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "AdView is expanding, cancel current \'start()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput p1, p0, Lcn/domob/android/ads/i;->O:I

    .line 385
    return-void
.end method

.method protected a(J)V
    .locals 2
    .parameter

    .prologue
    .line 415
    iput-wide p1, p0, Lcn/domob/android/ads/i;->Q:J

    .line 416
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/ads/i;->R:J

    .line 417
    return-void
.end method

.method protected a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 2
    .parameter

    .prologue
    .line 798
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "FAILED to load AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/i;->N:Z

    .line 800
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->a()V

    .line 802
    iget-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/i$2;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/ads/i$2;-><init>(Lcn/domob/android/ads/i;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 814
    return-void
.end method

.method protected a(Lcn/domob/android/ads/b;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 909
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->M:Z

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->n()I

    move-result v0

    .line 912
    packed-switch v0, :pswitch_data_0

    .line 926
    add-int/lit8 v0, v0, -0x2

    .line 927
    if-ltz v0, :cond_0

    invoke-static {}, Lcn/domob/android/ads/af$a;->values()[Lcn/domob/android/ads/af$a;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 929
    iget-object v1, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-static {}, Lcn/domob/android/ads/af$a;->values()[Lcn/domob/android/ads/af$a;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v0}, Lcn/domob/android/ads/af;->a(Lcn/domob/android/ads/af$a;)[Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/b;[Landroid/view/animation/AnimationSet;)V

    .line 941
    :goto_0
    return-void

    .line 915
    :pswitch_0
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/b;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 919
    :pswitch_1
    invoke-static {}, Lcn/domob/android/ads/af$a;->values()[Lcn/domob/android/ads/af$a;

    move-result-object v0

    array-length v0, v0

    .line 920
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    int-to-double v3, v0

    mul-double v0, v1, v3

    double-to-int v0, v0

    .line 921
    iget-object v1, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-static {}, Lcn/domob/android/ads/af$a;->values()[Lcn/domob/android/ads/af$a;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v0}, Lcn/domob/android/ads/af;->a(Lcn/domob/android/ads/af$a;)[Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/b;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 933
    :cond_0
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Invalid animation type index."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/b;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 939
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/b;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 912
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcn/domob/android/ads/l;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 715
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/i;->b(Lcn/domob/android/ads/l;I)V

    .line 717
    return-void
.end method

.method public a(Lcn/domob/android/ads/r;)V
    .locals 1
    .parameter

    .prologue
    .line 1552
    const-string v0, "install_success"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Lcn/domob/android/ads/r;)V

    .line 1553
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1420
    const-string v0, "up_alert"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1421
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1477
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1324
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "LandingPage \u5185\u4e0b\u8f7d\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 1328
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1329
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1330
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 1331
    invoke-static {v0}, Lcn/domob/android/ads/F;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1332
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    :cond_0
    invoke-static {v0}, Lcn/domob/android/ads/F;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 1337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domob://download?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcn/domob/android/ads/i;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    .line 1346
    :goto_1
    return-void

    .line 1339
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domob://download?url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "\u89e3\u6790LandingPage\u4e2d\u4e0b\u8f7d\u51fa\u73b0\u9519\u8bef\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;J)V

    .line 466
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->m()Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v1, Lcn/domob/android/ads/z;

    iget-object v2, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;)V

    .line 447
    new-instance v2, Lcn/domob/android/ads/z$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1}, Lcn/domob/android/ads/z$b;-><init>(Lcn/domob/android/ads/z;)V

    .line 448
    iput-object v0, v2, Lcn/domob/android/ads/z$b;->a:Ljava/lang/String;

    .line 449
    if-eqz p3, :cond_0

    .line 450
    iput-object p3, v2, Lcn/domob/android/ads/z$b;->b:Ljava/lang/String;

    .line 452
    :cond_0
    invoke-virtual {v1, p1, v2, p2}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Lcn/domob/android/ads/z$b;Ljava/util/HashMap;)V

    .line 453
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 473
    new-instance v0, Lcn/domob/android/ads/z;

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;)V

    .line 474
    new-instance v1, Lcn/domob/android/ads/z$f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcn/domob/android/ads/z$f;-><init>(Lcn/domob/android/ads/z;)V

    .line 475
    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v2}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/domob/android/ads/z$f;->a:Ljava/lang/String;

    .line 476
    new-array v2, v8, [I

    .line 477
    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/DomobAdView;->getLocationOnScreen([I)V

    .line 479
    const-string v3, "%d,%d,%d,%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v2}, Lcn/domob/android/ads/DomobAdView;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v8

    const/4 v2, 0x3

    iget-object v5, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v5}, Lcn/domob/android/ads/DomobAdView;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/domob/android/ads/z$f;->d:Ljava/lang/String;

    .line 481
    iget-object v2, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->v(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcn/domob/android/ads/z$f;->e:I

    .line 482
    iget-object v2, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->w(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcn/domob/android/ads/z$f;->f:I

    .line 483
    iget-object v2, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/domob/android/ads/z$f;->g:Ljava/lang/String;

    .line 484
    iput-object p3, v1, Lcn/domob/android/ads/z$f;->h:Ljava/lang/String;

    .line 485
    iput-object p4, v1, Lcn/domob/android/ads/z$f;->b:Ljava/lang/String;

    .line 486
    iput-wide p5, v1, Lcn/domob/android/ads/z$f;->i:J

    .line 488
    invoke-virtual {v0, p1, v1, p2}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Lcn/domob/android/ads/z$f;Ljava/util/HashMap;)V

    .line 489
    return-void
.end method

.method protected a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 246
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto refresh is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 247
    iput-boolean p1, p0, Lcn/domob/android/ads/i;->L:Z

    .line 248
    return-void
.end method

.method protected a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 951
    :try_start_0
    const-string v3, "domob"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 952
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 953
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 955
    const-string v4, "domob"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 956
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v3, "Scheme domob://"

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0, p1, p2, p3}, Lcn/domob/android/ads/i;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v1

    .line 1091
    :cond_0
    :goto_0
    return v1

    .line 959
    :cond_1
    const-string v3, "mraid"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 960
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 961
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 963
    const-string v5, "mraid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 964
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v4, "Scheme MRAID://"

    invoke-virtual {v1, v4}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v4, "expand"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "open"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 967
    :cond_2
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v3, "do click report for mraid scheme"

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->w()V

    .line 969
    iget-object v1, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 970
    iget-object v1, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v1, v3}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V

    .line 973
    :cond_3
    invoke-direct {p0}, Lcn/domob/android/ads/i;->N()V

    .line 974
    move-object v0, p1

    check-cast v0, Lcn/domob/android/ads/ac;

    move-object v1, v0

    new-instance v3, Lcn/domob/android/ads/i$5;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/i$5;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/ac;->a(Lcn/domob/android/ads/ac$a;)V

    .line 990
    :cond_4
    check-cast p1, Lcn/domob/android/ads/ac;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/domob/android/ads/ac;->a(Ljava/net/URI;)Z

    move-result v1

    goto :goto_0

    .line 993
    :cond_5
    const-string v3, "http"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "tel:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "voicemail:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "sms:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "mailto:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "geo:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "wtai://wp/mc;"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 997
    :cond_6
    sget-object v3, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v4, "Handle other phone intents."

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 998
    if-eqz p3, :cond_7

    .line 999
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->w()V

    .line 1000
    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1001
    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v3, v4}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V

    .line 1005
    :cond_7
    const-string v3, "http"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1006
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1007
    iget-object v3, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/ads/F;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1008
    sget-object v3, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v5, "browser exists"

    invoke-virtual {v3, v5}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 1009
    const-string v3, "com.android.browser"

    const-string v5, "com.android.browser.BrowserActivity"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1014
    iget-object v3, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_f

    .line 1017
    sget-object v3, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v5, "BrowserActivity class not exist,set component null"

    invoke-virtual {v3, v5}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 1018
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move v3, v1

    .line 1024
    :goto_1
    if-eqz v3, :cond_9

    .line 1026
    iget-object v5, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v5}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1027
    iget-object v5, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v5}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v5, v6}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V

    .line 1029
    :cond_8
    iget-object v5, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1032
    :cond_9
    :goto_2
    if-nez v3, :cond_0

    .line 1033
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1035
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1037
    const-string v4, "wtai://wp/mc;"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1038
    sget-object v3, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v4, "Create intent for: wtai://wp/mc;"

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 1040
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "wtai://wp/mc;"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1047
    :cond_a
    :try_start_1
    iget-object v4, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1048
    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1049
    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v3, v4}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 1051
    :catch_0
    move-exception v1

    .line 1052
    :try_start_2
    const-string v1, "DomobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not handle intent with URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Is this intent unsupported on your phone?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1056
    goto/16 :goto_0

    .line 1022
    :cond_b
    sget-object v3, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v5, "browser not exist"

    invoke-virtual {v3, v5}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    move v3, v2

    goto/16 :goto_1

    .line 1061
    :cond_c
    sget-object v3, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v4, "Handle unknown intents."

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 1063
    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1064
    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v3, v4}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V

    .line 1066
    :cond_d
    if-eqz p3, :cond_e

    .line 1067
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->w()V

    .line 1068
    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1069
    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v3, v4}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V

    .line 1073
    :cond_e
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1074
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1076
    :try_start_3
    iget-object v4, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1077
    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1078
    iget-object v3, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v3, v4}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1080
    :catch_1
    move-exception v3

    .line 1081
    :try_start_4
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not handle intent with URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Is this intent unsupported on your phone?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1085
    :catch_2
    move-exception v1

    .line 1086
    sget-object v3, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v4, "Exception in click."

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 1087
    sget-object v3, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    move v1, v2

    .line 1088
    goto/16 :goto_0

    :cond_f
    move v3, v1

    goto/16 :goto_1

    :cond_10
    move v3, v2

    goto/16 :goto_2
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcn/domob/android/ads/i;->P:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/i$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    sget-object v0, Lcn/domob/android/ads/i$c;->c:Lcn/domob/android/ads/i$c;

    iput-object v0, p0, Lcn/domob/android/ads/i;->k:Lcn/domob/android/ads/i$c;

    .line 195
    return-void
.end method

.method public b(Lcn/domob/android/ads/r;)V
    .locals 1
    .parameter

    .prologue
    .line 1557
    const-string v0, "run"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Lcn/domob/android/ads/r;)V

    .line 1558
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcn/domob/android/ads/i;->D:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1425
    const-string v0, "up_ok"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1426
    return-void
.end method

.method protected b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 255
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition animation is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 256
    iput-boolean p1, p0, Lcn/domob/android/ads/i;->M:Z

    .line 257
    return-void
.end method

.method protected b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1103
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1104
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 1107
    const-string v4, "inapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1108
    if-eqz p3, :cond_0

    .line 1109
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->w()V

    .line 1110
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v2}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V

    .line 1115
    :cond_0
    const-string v0, "url"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open landing page with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Lcn/domob/android/ads/i;->b:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1119
    invoke-direct {p0}, Lcn/domob/android/ads/i;->N()V

    .line 1120
    new-instance v1, Lcn/domob/android/ads/x;

    iget-object v2, p0, Lcn/domob/android/ads/i;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p2, p0}, Lcn/domob/android/ads/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/x$b;)V

    invoke-virtual {v1}, Lcn/domob/android/ads/x;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1121
    iget-object v0, p0, Lcn/domob/android/ads/i;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/i$6;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/i$6;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    move v0, v7

    .line 1234
    :goto_1
    return v0

    .line 1134
    :cond_2
    const-string v4, "download"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1135
    if-eqz p3, :cond_3

    .line 1136
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->w()V

    .line 1137
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1138
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v2}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V

    .line 1142
    :cond_3
    const-string v0, "url"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1143
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    new-instance v2, Lcn/domob/android/ads/r;

    iget-object v3, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-direct {v2, v3, v1, v4, p0}, Lcn/domob/android/ads/r;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/l;Lcn/domob/android/ads/r$a;)V

    .line 1145
    invoke-virtual {v2}, Lcn/domob/android/ads/r;->i()V

    .line 1146
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download app with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    :cond_4
    const-string v4, "launch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1148
    if-eqz p3, :cond_5

    .line 1149
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->w()V

    .line 1150
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1151
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v2}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V

    .line 1155
    :cond_5
    new-instance v0, Lcn/domob/android/ads/n;

    iget-object v2, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v1, p0}, Lcn/domob/android/ads/n;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/n$a;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/n;->a()V

    goto :goto_0

    .line 1156
    :cond_6
    const-string v4, "expand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1157
    if-eqz p3, :cond_7

    .line 1158
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->w()V

    .line 1159
    iget-object v1, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1160
    iget-object v1, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v1, v2}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V

    .line 1164
    :cond_7
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->i()Lcn/domob/android/ads/l$b$a;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1165
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expandable part url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v2}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->i()Lcn/domob/android/ads/l$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 1167
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expandable part base and content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v2}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->i()Lcn/domob/android/ads/l$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v2}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->i()Lcn/domob/android/ads/l$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 1171
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->i()Lcn/domob/android/ads/l$b$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/l$b$a;)V

    goto/16 :goto_0

    .line 1173
    :cond_8
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v2, "\u5e7f\u544a\u5e94\u7b54\u65e0Expandable\u90e8\u5206\uff0c\u65e0\u6cd5\u8fdb\u884cexpand action\u3002"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1176
    :cond_9
    const-string v4, "report"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1180
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1181
    if-eqz v3, :cond_a

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    .line 1182
    :cond_a
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v2, "There is no report type."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1185
    :cond_b
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1186
    const-string v3, "imp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1187
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 1188
    invoke-static {v0}, Lcn/domob/android/ads/F;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 1189
    const-string v3, "s"

    .line 1190
    const-string v0, "phase"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1191
    const-string v0, "phase"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1192
    const-string v1, "phase"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 1194
    :cond_c
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->k()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ac"

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1196
    :cond_d
    const-string v3, "event"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1197
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-static {v0}, Lcn/domob/android/ads/F;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 1199
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->l()Ljava/lang/String;

    move-result-object v1

    .line 1200
    const-string v0, "url"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1201
    const-string v0, "url"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1202
    const-string v1, "url"

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1205
    :cond_e
    new-instance v0, Lcn/domob/android/ads/z;

    iget-object v3, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;)V

    .line 1206
    new-instance v4, Lcn/domob/android/ads/z$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/z$c;-><init>(Lcn/domob/android/ads/z;)V

    .line 1207
    iget-object v3, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v3}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/l$b;->m()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcn/domob/android/ads/z$c;->a:Ljava/lang/String;

    .line 1208
    const-string v3, "ac"

    iput-object v3, v4, Lcn/domob/android/ads/z$c;->b:Ljava/lang/String;

    move-object v3, v2

    .line 1210
    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Lcn/domob/android/ads/z$h;Ljava/lang/String;Lcn/domob/android/ads/z$c;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1211
    :cond_f
    const-string v3, "clk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1212
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 1213
    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcn/domob/android/ads/F;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "ac"

    invoke-virtual {p0, v1, v0, v2}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1215
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1216
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V

    goto/16 :goto_0

    .line 1218
    :cond_10
    const-string v3, "visit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1220
    const-string v0, "url"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    new-instance v1, Lcn/domob/android/ads/p;

    iget-object v3, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v1, v3, v0, v2}, Lcn/domob/android/ads/p;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/p$a;)V

    invoke-virtual {v1}, Lcn/domob/android/ads/p;->b()V

    goto/16 :goto_0

    .line 1223
    :cond_11
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Unknown reprot type."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1225
    :cond_12
    const-string v1, "close"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1226
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->k()V

    goto/16 :goto_0

    .line 1227
    :cond_13
    const-string v1, "custom"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1230
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle unknown action : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected c()V
    .locals 6

    .prologue
    .line 198
    iget-object v0, p0, Lcn/domob/android/ads/i;->k:Lcn/domob/android/ads/i$c;

    sget-object v1, Lcn/domob/android/ads/i$c;->b:Lcn/domob/android/ads/i$c;

    if-ne v0, v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/i;->j:Lcn/domob/android/ads/i$a;

    sget-object v1, Lcn/domob/android/ads/i$a;->a:Lcn/domob/android/ads/i$a;

    if-ne v0, v1, :cond_2

    .line 203
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->L:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/domob/android/ads/i;->P:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/i$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 206
    iget-wide v2, p0, Lcn/domob/android/ads/i;->R:J

    iget-wide v4, p0, Lcn/domob/android/ads/i;->Q:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/domob/android/ads/i;->R:J

    .line 207
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause schedule and the ad has shown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/domob/android/ads/i;->R:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcn/domob/android/ads/i$c;->b:Lcn/domob/android/ads/i$c;

    iput-object v0, p0, Lcn/domob/android/ads/i;->k:Lcn/domob/android/ads/i$c;

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/i;->j:Lcn/domob/android/ads/i$a;

    sget-object v1, Lcn/domob/android/ads/i$a;->b:Lcn/domob/android/ads/i$a;

    if-ne v0, v1, :cond_0

    .line 211
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "AdView is expanding, pause() has been called. Cancel current \'pause()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcn/domob/android/ads/r;)V
    .locals 1
    .parameter

    .prologue
    .line 1492
    const-string v0, "download_finish"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Lcn/domob/android/ads/r;)V

    .line 1493
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcn/domob/android/ads/i;->E:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public c(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1430
    const-string v0, "up_cancel"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1431
    return-void
.end method

.method protected c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-boolean p1, p0, Lcn/domob/android/ads/i;->N:Z

    .line 376
    return-void
.end method

.method protected d()V
    .locals 5

    .prologue
    .line 216
    iget-object v0, p0, Lcn/domob/android/ads/i;->k:Lcn/domob/android/ads/i$c;

    sget-object v1, Lcn/domob/android/ads/i$c;->a:Lcn/domob/android/ads/i$c;

    if-ne v0, v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/i;->j:Lcn/domob/android/ads/i$a;

    sget-object v1, Lcn/domob/android/ads/i$a;->a:Lcn/domob/android/ads/i$a;

    if-ne v0, v1, :cond_3

    .line 221
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/domob/android/ads/i;->O:I

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/i;->Q:J

    .line 224
    iget v0, p0, Lcn/domob/android/ads/i;->O:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/domob/android/ads/i;->R:J

    sub-long/2addr v0, v2

    .line 226
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 227
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Maybe there is no ad, request no."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->i()V

    goto :goto_0

    .line 230
    :cond_2
    sget-object v2, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume with remaining time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcn/domob/android/ads/i;->P:Landroid/os/Handler;

    iget-object v3, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/i$b;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    sget-object v0, Lcn/domob/android/ads/i$c;->a:Lcn/domob/android/ads/i$c;

    iput-object v0, p0, Lcn/domob/android/ads/i;->k:Lcn/domob/android/ads/i$c;

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/i;->j:Lcn/domob/android/ads/i$a;

    sget-object v1, Lcn/domob/android/ads/i$a;->b:Lcn/domob/android/ads/i$a;

    if-ne v0, v1, :cond_0

    .line 236
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "AdView is expanding, cancel current \'resume()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcn/domob/android/ads/r;)V
    .locals 1
    .parameter

    .prologue
    .line 1497
    const-string v0, "download_failed"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Lcn/domob/android/ads/r;)V

    .line 1498
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcn/domob/android/ads/i;->F:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public d(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1435
    const-string v0, "up_skip"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1436
    return-void
.end method

.method protected d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-boolean p1, p0, Lcn/domob/android/ads/i;->K:Z

    .line 407
    return-void
.end method

.method protected e()J
    .locals 6

    .prologue
    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 242
    iget-wide v2, p0, Lcn/domob/android/ads/i;->R:J

    iget-wide v4, p0, Lcn/domob/android/ads/i;->Q:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public e(Lcn/domob/android/ads/r;)V
    .locals 1
    .parameter

    .prologue
    .line 1502
    const-string v0, "download_start"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Lcn/domob/android/ads/r;)V

    .line 1503
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcn/domob/android/ads/i;->G:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public e(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1440
    const-string v0, "download_finish"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1441
    return-void
.end method

.method public f(Lcn/domob/android/ads/r;)V
    .locals 1
    .parameter

    .prologue
    .line 1507
    const-string v0, "download_cancel"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Lcn/domob/android/ads/r;)V

    .line 1508
    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcn/domob/android/ads/i;->H:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public f(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1445
    const-string v0, "download_failed"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1446
    return-void
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->L:Z

    return v0
.end method

.method public g(Lcn/domob/android/ads/r;)V
    .locals 2
    .parameter

    .prologue
    .line 1512
    const-string v0, "download_repeat"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Lcn/domob/android/ads/r;)V

    .line 1513
    iget-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/i$8;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/i$8;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1521
    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1296
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    const-string v0, "lp_url"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    :cond_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1302
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1303
    invoke-static {v1}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1318
    :cond_1
    :goto_0
    return-void

    .line 1308
    :cond_2
    const-string v2, "domob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1312
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcn/domob/android/ads/i;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1314
    :catch_0
    move-exception v0

    .line 1315
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v2, "Error while parsing landingpage URL."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 1316
    sget-object v1, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1450
    const-string v0, "download_start"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1451
    return-void
.end method

.method protected g()Z
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Check settings and permissions."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "All permissions are ok."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    .line 273
    :cond_0
    const-string v0, "DomobSDK"

    const-string v1, "Permission denied."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :cond_1
    const-string v0, "DomobSDK"

    const-string v1, "Please set your PlacementID first."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected declared-synchronized h()V
    .locals 2

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->K:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/i;->N:Z

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :goto_0
    monitor-exit p0

    return-void

    .line 286
    :cond_0
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Ignore auto request from DomobAdView."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h(Lcn/domob/android/ads/r;)V
    .locals 0
    .parameter

    .prologue
    .line 1526
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1402
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcn/domob/android/ads/i;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    const-string v0, "la_failsafe_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/i;->m(Ljava/lang/String;)V

    .line 1407
    :goto_0
    return-void

    .line 1405
    :cond_0
    const-string v0, "la_failsafe_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/i;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1455
    const-string v0, "download_cancel"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1456
    return-void
.end method

.method protected declared-synchronized i()V
    .locals 4

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->N:Z

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :goto_0
    monitor-exit p0

    return-void

    .line 296
    :cond_0
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "DomobAdView is requesting."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 304
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/domob/android/ads/i;->P:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/i$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    iget-object v0, p0, Lcn/domob/android/ads/i;->P:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/i$b;

    iget v2, p0, Lcn/domob/android/ads/i;->O:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public i(Lcn/domob/android/ads/r;)V
    .locals 1
    .parameter

    .prologue
    .line 1530
    const-string v0, "download_md5_failed"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Lcn/domob/android/ads/r;)V

    .line 1531
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1569
    invoke-direct {p0, p1}, Lcn/domob/android/ads/i;->n(Ljava/lang/String;)V

    .line 1570
    return-void
.end method

.method public i(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1460
    const-string v0, "download_repeat"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1461
    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcn/domob/android/ads/i;->C:Ljava/lang/String;

    return-object v0
.end method

.method public j(Lcn/domob/android/ads/r;)V
    .locals 1
    .parameter

    .prologue
    .line 1536
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/h;->a(Lcn/domob/android/ads/r;)V

    .line 1537
    return-void
.end method

.method protected j(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1574
    iput-object p1, p0, Lcn/domob/android/ads/i;->I:Ljava/lang/String;

    .line 1575
    return-void
.end method

.method public j(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1466
    return-void
.end method

.method protected k()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->d()I

    move-result v0

    return v0
.end method

.method protected k(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1578
    iput-object p1, p0, Lcn/domob/android/ads/i;->J:Ljava/lang/String;

    .line 1579
    return-void
.end method

.method public k(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1470
    const-string v0, "download_md5_failed"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1471
    return-void
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcn/domob/android/ads/i;->D:Ljava/lang/String;

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcn/domob/android/ads/i;->E:Ljava/lang/String;

    return-object v0
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcn/domob/android/ads/i;->F:Ljava/lang/String;

    return-object v0
.end method

.method protected p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcn/domob/android/ads/i;->G:Ljava/lang/String;

    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcn/domob/android/ads/i;->H:Ljava/lang/String;

    return-object v0
.end method

.method protected r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected s()Lcn/domob/android/ads/DomobAdListener;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->e()Lcn/domob/android/ads/DomobAdListener;

    move-result-object v0

    return-object v0
.end method

.method protected t()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->K:Z

    return v0
.end method

.method protected u()Lcn/domob/android/ads/l;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    return-object v0
.end method

.method protected v()V
    .locals 5

    .prologue
    .line 424
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/j;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    iget-boolean v0, p0, Lcn/domob/android/ads/i;->N:Z

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->b()V

    .line 427
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "Load after schedule request."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/i;->N:Z

    .line 429
    new-instance v0, Lcn/domob/android/ads/k;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/k;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/k;->a()V

    .line 437
    :goto_0
    return-void

    .line 431
    :cond_0
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    const-string v1, "An ad is requesting."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_1
    sget-object v0, Lcn/domob/android/ads/i;->B:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad has been disabled currently. Disable expire time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/j;->c()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected w()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method protected x()V
    .locals 2

    .prologue
    .line 460
    invoke-static {}, Lcn/domob/android/ads/I;->a()Lcn/domob/android/ads/I;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcn/domob/android/ads/I;->a(Landroid/content/Context;Lcn/domob/android/ads/i;)V

    .line 461
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->y()V

    .line 462
    return-void
.end method

.method protected y()V
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/i;->K:Z

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/i;->N:Z

    .line 497
    sget-object v0, Lcn/domob/android/ads/i$c;->c:Lcn/domob/android/ads/i$c;

    iput-object v0, p0, Lcn/domob/android/ads/i;->k:Lcn/domob/android/ads/i$c;

    .line 498
    invoke-virtual {p0}, Lcn/domob/android/ads/i;->a()V

    .line 499
    return-void
.end method

.method protected z()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/i$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/i$1;-><init>(Lcn/domob/android/ads/i;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 685
    return-void
.end method
