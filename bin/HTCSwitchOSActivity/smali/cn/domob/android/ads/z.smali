.class Lcn/domob/android/ads/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/z$c;,
        Lcn/domob/android/ads/z$f;,
        Lcn/domob/android/ads/z$b;,
        Lcn/domob/android/ads/z$a;,
        Lcn/domob/android/ads/z$g;,
        Lcn/domob/android/ads/z$e;,
        Lcn/domob/android/ads/z$d;,
        Lcn/domob/android/ads/z$h;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "data"

.field private static a:Lcn/domob/android/ads/J; = null

.field private static final c:Ljava/lang/String; = "click_report"

.field private static final d:Ljava/lang/String; = "impression_report"

.field private static final e:Ljava/lang/String; = "v"

.field private static final f:Ljava/lang/String; = "sv"

.field private static final g:Ljava/lang/String; = "rt"

.field private static final h:Ljava/lang/String; = "ua"

.field private static final i:Ljava/lang/String; = "ipb"

.field private static final j:Ljava/lang/String; = "idv"

.field private static final k:Ljava/lang/String; = "ts"

.field private static final l:Ljava/lang/String; = "rnd"

.field private static final m:Ljava/lang/String; = "vcode"

.field private static final n:Ljava/lang/String; = "tr"

.field private static final o:Ljava/lang/String; = "type"

.field private static final p:Ljava/lang/String; = "pkg"

.field private static final q:Ljava/lang/String; = "vc"

.field private static final r:Ljava/lang/String; = "vn"

.field private static final s:Ljava/lang/String; = "total"

.field private static final t:Ljava/lang/String; = "failsafe"

.field private static final u:Ljava/lang/String; = "frame"

.field private static final v:Ljava/lang/String; = "sw"

.field private static final w:Ljava/lang/String; = "sh"

.field private static final x:Ljava/lang/String; = "so"

.field private static final y:Ljava/lang/String; = "phase"

.field private static final z:Ljava/lang/String; = "origin"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/z;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcn/domob/android/ads/z;->b:Landroid/content/Context;

    .line 121
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    new-instance v0, Lcn/domob/android/ads/p;

    iget-object v1, p0, Lcn/domob/android/ads/z;->b:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v2, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/p$a;)V

    .line 258
    invoke-virtual {v0, p3}, Lcn/domob/android/ads/p;->a(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Lcn/domob/android/ads/p;->b()V

    .line 260
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 273
    :cond_0
    const-string v0, "v"

    const-string v1, "20120321"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "sv"

    const-string v1, "030105"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "idv"

    iget-object v1, p0, Lcn/domob/android/ads/z;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/q;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-void
.end method

.method private a(Ljava/util/HashMap;Lcn/domob/android/ads/z$a;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/domob/android/ads/z$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    sget-object v0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    const-string v1, "Build Report Common Params Error, paramsMap is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v0, ""

    .line 179
    if-eqz p2, :cond_1

    .line 180
    iget-object v0, p2, Lcn/domob/android/ads/z$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcn/domob/android/ads/z$a;->a:Ljava/lang/String;

    .line 181
    :goto_1
    const-string v1, "origin"

    iget-object v2, p2, Lcn/domob/android/ads/z$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/z;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcn/domob/android/ads/z;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v1, v2, v0}, Lcn/domob/android/ads/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/ads/s$a;

    move-result-object v3

    .line 188
    const-string v4, "tr"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "ts"

    invoke-virtual {v3}, Lcn/domob/android/ads/s$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "rnd"

    invoke-virtual {v3}, Lcn/domob/android/ads/s$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, "vcode"

    invoke-virtual {v3}, Lcn/domob/android/ads/s$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "ipb"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "ua"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/p;)V
    .locals 3
    .parameter

    .prologue
    .line 280
    invoke-virtual {p1}, Lcn/domob/android/ads/p;->f()I

    move-result v0

    .line 282
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 283
    sget-object v0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/android/ads/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finish."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Lcn/domob/android/ads/z$b;Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/z$b;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    const-string v1, "Prepare to report:click_report"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 125
    invoke-static {p1}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    if-nez p3, :cond_0

    .line 128
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 131
    :cond_0
    invoke-direct {p0, p3, p2}, Lcn/domob/android/ads/z;->a(Ljava/util/HashMap;Lcn/domob/android/ads/z$a;)V

    .line 132
    invoke-static {p3}, Lcn/domob/android/ads/F;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v1, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click report params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click report url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 135
    const-string v1, "click_report"

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_1
    sget-object v0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    const-string v1, "Click report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcn/domob/android/ads/z$f;Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/z$f;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    const-string v1, "Prepare to report:impression_report"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    if-nez p3, :cond_0

    .line 146
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 149
    :cond_0
    invoke-direct {p0, p3, p2}, Lcn/domob/android/ads/z;->a(Ljava/util/HashMap;Lcn/domob/android/ads/z$a;)V

    .line 150
    const-string v0, "frame"

    iget-object v1, p2, Lcn/domob/android/ads/z$f;->d:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "sw"

    iget v1, p2, Lcn/domob/android/ads/z$f;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "sh"

    iget v1, p2, Lcn/domob/android/ads/z$f;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "so"

    iget-object v1, p0, Lcn/domob/android/ads/z;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/q;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "phase"

    iget-object v1, p2, Lcn/domob/android/ads/z$f;->h:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-wide v0, p2, Lcn/domob/android/ads/z$f;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 157
    const-string v0, "total"

    iget-wide v1, p2, Lcn/domob/android/ads/z$f;->i:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1
    invoke-static {p3}, Lcn/domob/android/ads/F;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-object v1, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression report params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 162
    sget-object v1, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression report urls:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impression_report-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/domob/android/ads/z$f;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_2
    sget-object v0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    const-string v1, "Impression report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcn/domob/android/ads/z$h;Ljava/lang/String;Lcn/domob/android/ads/z$c;Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/z$h;",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/z$c;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare to report:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 209
    if-nez p5, :cond_0

    .line 210
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 213
    :cond_0
    invoke-direct {p0, p5, p4}, Lcn/domob/android/ads/z;->a(Ljava/util/HashMap;Lcn/domob/android/ads/z$a;)V

    .line 214
    invoke-direct {p0, p5}, Lcn/domob/android/ads/z;->a(Ljava/util/HashMap;)V

    .line 216
    if-eqz p2, :cond_1

    .line 217
    const-string v0, "rt"

    invoke-virtual {p2}, Lcn/domob/android/ads/z$h;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_1
    if-eqz p3, :cond_2

    .line 221
    const-string v0, "type"

    invoke-virtual {p5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_2
    if-eqz p4, :cond_7

    .line 225
    iget-object v0, p4, Lcn/domob/android/ads/z$c;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 226
    const-string v0, "pkg"

    iget-object v1, p4, Lcn/domob/android/ads/z$c;->d:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_3
    iget v0, p4, Lcn/domob/android/ads/z$c;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 230
    const-string v0, "vc"

    iget v1, p4, Lcn/domob/android/ads/z$c;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_4
    iget-object v0, p4, Lcn/domob/android/ads/z$c;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 234
    const-string v0, "vn"

    iget-object v1, p4, Lcn/domob/android/ads/z$c;->f:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_5
    iget-object v0, p4, Lcn/domob/android/ads/z$c;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 238
    const-string v0, "failsafe"

    iget-object v1, p4, Lcn/domob/android/ads/z$c;->g:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_6
    iget-object v0, p4, Lcn/domob/android/ads/z$c;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 242
    const-string v0, "data"

    iget-object v1, p4, Lcn/domob/android/ads/z$c;->h:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_7
    invoke-static {p5}, Lcn/domob/android/ads/F;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 247
    sget-object v1, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event report ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 248
    sget-object v1, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event report urls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0, p1, v0, p3}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_8
    sget-object v0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/J;

    const-string v1, "Event report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
