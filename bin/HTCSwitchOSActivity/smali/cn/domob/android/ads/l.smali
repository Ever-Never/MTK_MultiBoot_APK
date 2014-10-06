.class Lcn/domob/android/ads/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/l$a;,
        Lcn/domob/android/ads/l$c;,
        Lcn/domob/android/ads/l$b;
    }
.end annotation


# static fields
.field protected static final A:Ljava/lang/String; = "click_tracker"

.field protected static final B:Ljava/lang/String; = "imp_tracker"

.field protected static final C:Ljava/lang/String; = "event_tracker"

.field protected static final D:Ljava/lang/String; = "tracker"

.field protected static final E:Ljava/lang/String; = "animation"

.field protected static final F:Ljava/lang/String; = "o"

.field protected static final G:Ljava/lang/String; = "cls_btn"

.field protected static final H:Ljava/lang/String; = "imp_min"

.field protected static final I:Ljava/lang/String; = "imp_cls"

.field protected static final J:Ljava/lang/String; = "expire"

.field protected static final K:Ljava/lang/String; = "rc"

.field protected static final L:Ljava/lang/String; = "pkg"

.field protected static final M:Ljava/lang/String; = "code"

.field protected static final N:Ljava/lang/String; = "text"

.field protected static final O:Ljava/lang/String; = "refresh"

.field protected static final P:Ljava/lang/String; = "disable"

.field protected static final Q:Ljava/lang/String; = "dis_time"

.field protected static final R:Ljava/lang/String; = "ors"

.field protected static final S:Ljava/lang/String; = "version"

.field protected static final T:Ljava/lang/String; = "config"

.field private static U:Lcn/domob/android/ads/J; = null

.field protected static final a:Ljava/lang/String; = "sid"

.field protected static final b:Ljava/lang/String; = "cid"

.field protected static final c:Ljava/lang/String; = "ad"

.field protected static final d:Ljava/lang/String; = "error"

.field protected static final e:Ljava/lang/String; = "control"

.field protected static final f:Ljava/lang/String; = "id"

.field protected static final g:Ljava/lang/String; = "format"

.field protected static final h:Ljava/lang/String; = "width"

.field protected static final i:Ljava/lang/String; = "height"

.field protected static final j:Ljava/lang/String; = "ct"

.field protected static final k:Ljava/lang/String; = "url"

.field protected static final l:Ljava/lang/String; = "content"

.field protected static final m:Ljava/lang/String; = "base_url"

.field protected static final n:Ljava/lang/String; = "expandable"

.field protected static final o:Ljava/lang/String; = "render"

.field protected static final p:Ljava/lang/String; = "ct"

.field protected static final q:Ljava/lang/String; = "url"

.field protected static final r:Ljava/lang/String; = "content"

.field protected static final s:Ljava/lang/String; = "base_url"

.field protected static final t:Ljava/lang/String; = "o"

.field protected static final u:Ljava/lang/String; = "preload"

.field protected static final v:Ljava/lang/String; = "timeout"

.field protected static final w:Ljava/lang/String; = "autoplay"

.field protected static final x:Ljava/lang/String; = "cls_btn"

.field protected static final y:Ljava/lang/String; = "width"

.field protected static final z:Ljava/lang/String; = "height"


# instance fields
.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Lcn/domob/android/ads/l$b;

.field private Z:Lcn/domob/android/ads/l$c;

.field private aa:Lcn/domob/android/ads/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/l;->U:Lcn/domob/android/ads/J;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method protected static a(Ljava/lang/String;)Lcn/domob/android/ads/l;
    .locals 3
    .parameter

    .prologue
    .line 79
    new-instance v0, Lcn/domob/android/ads/l;

    invoke-direct {v0}, Lcn/domob/android/ads/l;-><init>()V

    .line 81
    invoke-direct {v0, p0}, Lcn/domob/android/ads/l;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lcn/domob/android/ads/l;->U:Lcn/domob/android/ads/J;

    const-string v2, "Ad/Error response is ok."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 98
    :try_start_0
    iput-object p1, p0, Lcn/domob/android/ads/l;->V:Ljava/lang/String;

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 100
    const-string v1, "sid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/l;->W:Ljava/lang/String;

    .line 101
    const-string v1, "cid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/l;->X:Ljava/lang/String;

    .line 103
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 104
    const-string v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 105
    const-string v3, "control"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    if-eqz v1, :cond_1

    .line 108
    new-instance v2, Lcn/domob/android/ads/l$b;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/ads/l$b;-><init>(Lcn/domob/android/ads/l;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcn/domob/android/ads/l;->Y:Lcn/domob/android/ads/l$b;

    .line 115
    :goto_0
    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Lcn/domob/android/ads/l$a;

    invoke-direct {v1, p0, v0}, Lcn/domob/android/ads/l$a;-><init>(Lcn/domob/android/ads/l;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/android/ads/l;->aa:Lcn/domob/android/ads/l$a;

    .line 119
    :cond_0
    const/4 v0, 0x1

    .line 124
    :goto_1
    return v0

    .line 109
    :cond_1
    if-eqz v2, :cond_2

    .line 110
    new-instance v1, Lcn/domob/android/ads/l$c;

    invoke-direct {v1, p0, v2}, Lcn/domob/android/ads/l$c;-><init>(Lcn/domob/android/ads/l;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/android/ads/l;->Z:Lcn/domob/android/ads/l$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    sget-object v1, Lcn/domob/android/ads/l;->U:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 124
    const/4 v0, 0x0

    goto :goto_1

    .line 112
    :cond_2
    :try_start_1
    sget-object v1, Lcn/domob/android/ads/l;->U:Lcn/domob/android/ads/J;

    const-string v2, "There is no ad response or error response."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/l;->V:Ljava/lang/String;

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/domob/android/ads/l;->W:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/domob/android/ads/l;->X:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Lcn/domob/android/ads/l$b;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/domob/android/ads/l;->Y:Lcn/domob/android/ads/l$b;

    return-object v0
.end method

.method protected e()Lcn/domob/android/ads/l$c;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcn/domob/android/ads/l;->Z:Lcn/domob/android/ads/l$c;

    return-object v0
.end method

.method protected f()Lcn/domob/android/ads/l$a;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/l;->aa:Lcn/domob/android/ads/l$a;

    return-object v0
.end method
