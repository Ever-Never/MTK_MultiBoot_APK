.class Lcn/domob/android/ads/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/k$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "pb[name]"

.field private static final B:Ljava/lang/String; = "pb[version]"

.field private static final C:Ljava/lang/String; = "d[coord_timestamp]"

.field private static final D:Ljava/lang/String; = "d[coord]"

.field private static final E:Ljava/lang/String; = "d[coord_acc]"

.field private static final F:Ljava/lang/String; = "d[coord_status]"

.field private static final G:Ljava/lang/String; = "d[pc]"

.field private static final H:Ljava/lang/String; = "d[dob]"

.field private static final I:Ljava/lang/String; = "d[gender]"

.field private static final J:Ljava/lang/String; = "spot"

.field private static final K:Ljava/lang/String; = "network"

.field private static final L:Ljava/lang/String; = "lpkg"

.field private static final M:Ljava/lang/String; = "or"

.field private static final N:Ljava/lang/String; = "orv"

.field private static final O:Ljava/lang/String; = "dma"

.field private static final P:Ljava/lang/String; = "ama"

.field private static final Q:Ljava/lang/String; = "lac"

.field private static final R:Ljava/lang/String; = "cell"

.field protected static final a:I = 0x1

.field private static b:Lcn/domob/android/ads/J; = null

.field private static final f:Ljava/lang/String; = "sdk"

.field private static final g:Ljava/lang/String; = "rt"

.field private static final h:Ljava/lang/String; = "pt"

.field private static final i:Ljava/lang/String; = "ts"

.field private static final j:Ljava/lang/String; = "ua"

.field private static final k:Ljava/lang/String; = "ipb"

.field private static final l:Ljava/lang/String; = "idv"

.field private static final m:Ljava/lang/String; = "v"

.field private static final n:Ljava/lang/String; = "sv"

.field private static final o:Ljava/lang/String; = "l"

.field private static final p:Ljava/lang/String; = "f"

.field private static final q:Ljava/lang/String; = "e"

.field private static final r:Ljava/lang/String; = "cid"

.field private static final s:Ljava/lang/String; = "dim"

.field private static final t:Ljava/lang/String; = "so"

.field private static final u:Ljava/lang/String; = "sw"

.field private static final v:Ljava/lang/String; = "sh"

.field private static final w:Ljava/lang/String; = "sd"

.field private static final x:Ljava/lang/String; = "c"

.field private static final y:Ljava/lang/String; = "k"

.field private static final z:Ljava/lang/String; = "pb[identifier]"


# instance fields
.field private c:Lcn/domob/android/ads/p;

.field private d:Lcn/domob/android/ads/i;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/k;->b:Lcn/domob/android/ads/J;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/i;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcn/domob/android/ads/k;->b:Lcn/domob/android/ads/J;

    const-string v1, "New instance of DomobAdRequest."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    .line 71
    invoke-virtual {p1}, Lcn/domob/android/ads/i;->r()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    const-string v1, "sdk"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "rt"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "ua"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "ipb"

    iget-object v2, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v2}, Lcn/domob/android/ads/i;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "idv"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "20121128"

    aput-object v4, v3, v6

    const-string v4, "android"

    aput-object v4, v3, v5

    const-string v4, "20120321"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "sv"

    const-string v2, "030105"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "l"

    const-string v2, "zh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "f"

    const-string v2, "jsonp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "e"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "cid"

    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v1}, Lcn/domob/android/ads/i;->k()I

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "pt"

    iget-object v2, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v2}, Lcn/domob/android/ads/i;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v1}, Lcn/domob/android/ads/i;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 110
    const-string v1, "dim"

    iget-object v2, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v2}, Lcn/domob/android/ads/i;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    const-string v1, "so"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "sw"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->v(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "sh"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->w(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "sd"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "c"

    const-string v2, "%s,%s,%s,%s,%s,%s,%s,%s"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "gif"

    aput-object v4, v3, v6

    const-string v4, "ltx"

    aput-object v4, v3, v5

    const-string v4, "la"

    aput-object v4, v3, v7

    const-string v4, "hv"

    aput-object v4, v3, v8

    const/4 v4, 0x4

    const-string v5, "expd"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "iad"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "spi"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "mraid1"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "pb[identifier]"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "pb[name]"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "pb[version]"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "network"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v1}, Lcn/domob/android/ads/i;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 130
    const-string v1, "k"

    iget-object v2, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v2}, Lcn/domob/android/ads/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_2
    iget-object v1, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/q;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_c

    .line 136
    const-string v2, "d[coord_timestamp]"

    invoke-static {}, Lcn/domob/android/ads/q;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "d[coord]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "d[coord_acc]"

    invoke-static {}, Lcn/domob/android/ads/q;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "lac"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "cell"

    iget-object v2, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :goto_0
    iget-object v1, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v1}, Lcn/domob/android/ads/i;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 150
    const-string v1, "d[pc]"

    iget-object v2, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v2}, Lcn/domob/android/ads/i;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_3
    iget-object v1, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v1}, Lcn/domob/android/ads/i;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 154
    const-string v1, "d[dob]"

    iget-object v2, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v2}, Lcn/domob/android/ads/i;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_4
    iget-object v1, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v1}, Lcn/domob/android/ads/i;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 158
    const-string v1, "d[gender]"

    iget-object v2, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v2}, Lcn/domob/android/ads/i;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_5
    iget-object v1, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v1}, Lcn/domob/android/ads/i;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 162
    const-string v1, "spot"

    iget-object v2, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {v2}, Lcn/domob/android/ads/i;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_6
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 166
    const-string v1, "lpkg"

    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/j;->d(Ljava/lang/String;)V

    .line 169
    :cond_7
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 170
    const-string v1, "or"

    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_8
    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 173
    const-string v1, "orv"

    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_9
    iget-object v1, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/F;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/q;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 177
    sget-object v1, Lcn/domob/android/ads/k;->b:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "des encode dma:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/ads/q;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "d!j@d#g$r%s^j&h*"

    iget-object v4, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v4}, Lcn/domob/android/ads/q;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/domob/android/ads/F;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 178
    const-string v1, "dma"

    const-string v2, "d!j@d#g$r%s^j&h*"

    iget-object v3, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/ads/q;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/domob/android/ads/F;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_a
    iget-object v1, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/F;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/F;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/q;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 182
    sget-object v1, Lcn/domob/android/ads/k;->b:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "des encode ama:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/ads/q;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "d!j@d#g$r%s^j&h*"

    iget-object v4, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v4}, Lcn/domob/android/ads/q;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/domob/android/ads/F;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 183
    const-string v1, "ama"

    const-string v2, "d!j@d#g$r%s^j&h*"

    iget-object v3, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/ads/q;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/domob/android/ads/F;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_b
    invoke-static {v0}, Lcn/domob/android/ads/F;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_c
    const-string v1, "d[coord_status]"

    invoke-static {}, Lcn/domob/android/ads/q;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 9

    .prologue
    .line 79
    sget-object v0, Lcn/domob/android/ads/k;->b:Lcn/domob/android/ads/J;

    const-string v1, "Start to request ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcn/domob/android/ads/k;->b()Ljava/lang/String;

    move-result-object v6

    .line 81
    sget-object v0, Lcn/domob/android/ads/k;->b:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad req string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcn/domob/android/ads/p;

    iget-object v1, p0, Lcn/domob/android/ads/k;->e:Landroid/content/Context;

    invoke-static {}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/j;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/p$a;)V

    iput-object v0, p0, Lcn/domob/android/ads/k;->c:Lcn/domob/android/ads/p;

    .line 84
    iget-object v0, p0, Lcn/domob/android/ads/k;->c:Lcn/domob/android/ads/p;

    invoke-virtual {v0}, Lcn/domob/android/ads/p;->b()V

    .line 85
    return-void
.end method

.method public a(Lcn/domob/android/ads/p;)V
    .locals 4
    .parameter

    .prologue
    .line 191
    invoke-virtual {p1}, Lcn/domob/android/ads/p;->e()Ljava/lang/String;

    move-result-object v1

    .line 192
    const/4 v0, 0x0

    .line 194
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    sget-object v0, Lcn/domob/android/ads/k;->b:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad resp string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 196
    invoke-static {v1}, Lcn/domob/android/ads/l;->a(Ljava/lang/String;)Lcn/domob/android/ads/l;

    move-result-object v0

    .line 201
    :goto_0
    iget-object v1, p0, Lcn/domob/android/ads/k;->d:Lcn/domob/android/ads/i;

    invoke-virtual {p1}, Lcn/domob/android/ads/p;->f()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/l;I)V

    .line 202
    return-void

    .line 198
    :cond_0
    sget-object v1, Lcn/domob/android/ads/k;->b:Lcn/domob/android/ads/J;

    const-string v2, "Ad respStr is null."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
