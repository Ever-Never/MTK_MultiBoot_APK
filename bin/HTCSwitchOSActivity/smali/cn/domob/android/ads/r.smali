.class Lcn/domob/android/ads/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/r$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "url"

.field private static final n:Ljava/lang/String; = "auto_run"

.field private static final o:Ljava/lang/String; = "name"

.field private static final p:Ljava/lang/String; = "pkg"

.field private static final q:Ljava/lang/String; = "vc"

.field private static final r:Ljava/lang/String; = "vn"


# instance fields
.field a:Lcn/domob/android/ads/J;

.field private b:Landroid/content/Context;

.field private c:Landroid/net/Uri;

.field private d:Lcn/domob/android/ads/l;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcn/domob/android/ads/r$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/l;Lcn/domob/android/ads/r$a;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/r;->a:Lcn/domob/android/ads/J;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/r;->f:Z

    .line 69
    iput-object p1, p0, Lcn/domob/android/ads/r;->b:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcn/domob/android/ads/r;->c:Landroid/net/Uri;

    .line 71
    iput-object p3, p0, Lcn/domob/android/ads/r;->d:Lcn/domob/android/ads/l;

    .line 72
    iput-object p4, p0, Lcn/domob/android/ads/r;->l:Lcn/domob/android/ads/r$a;

    .line 73
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcn/domob/android/ads/E;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/E;)V

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/E;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/r;->a:Lcn/domob/android/ads/J;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/r;->f:Z

    .line 93
    iput-object p1, p0, Lcn/domob/android/ads/r;->b:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcn/domob/android/ads/r;->e:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcn/domob/android/ads/r;->g:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Lcn/domob/android/ads/r;->h:Ljava/lang/String;

    .line 97
    iput p5, p0, Lcn/domob/android/ads/r;->i:I

    .line 98
    iput-object p6, p0, Lcn/domob/android/ads/r;->j:Ljava/lang/String;

    .line 99
    iput-object p7, p0, Lcn/domob/android/ads/r;->k:Ljava/lang/String;

    .line 100
    iput-object p8, p0, Lcn/domob/android/ads/r;->l:Lcn/domob/android/ads/r$a;

    .line 101
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/android/ads/r;->l:Lcn/domob/android/ads/r$a;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcn/domob/android/ads/r;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/android/ads/r;->b:Landroid/content/Context;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/r;->c:Landroid/net/Uri;

    const-string v1, "url"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/r;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/r;->e:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcn/domob/android/ads/r;->c:Landroid/net/Uri;

    const-string v1, "auto_run"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/r;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/domob/android/ads/r;->f:Z

    .line 173
    iget-object v0, p0, Lcn/domob/android/ads/r;->c:Landroid/net/Uri;

    const-string v1, "name"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/r;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/r;->g:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcn/domob/android/ads/r;->c:Landroid/net/Uri;

    const-string v1, "pkg"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/r;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/r;->h:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcn/domob/android/ads/r;->c:Landroid/net/Uri;

    const-string v1, "vc"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/r;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcn/domob/android/ads/r;->i:I

    .line 177
    iget-object v0, p0, Lcn/domob/android/ads/r;->c:Landroid/net/Uri;

    const-string v1, "vn"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/r;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/r;->j:Ljava/lang/String;

    .line 181
    :goto_2
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/r;->c:Landroid/net/Uri;

    const-string v1, "auto_run"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/r;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/r;->c:Landroid/net/Uri;

    const-string v1, "vc"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/r;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    iget-object v0, p0, Lcn/domob/android/ads/r;->a:Lcn/domob/android/ads/J;

    const-string v1, "Error happened in getting download info"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private k()V
    .locals 7

    .prologue
    .line 197
    iget-object v0, p0, Lcn/domob/android/ads/r;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Download url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/r;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcn/domob/android/ads/r;->e:Ljava/lang/String;

    iget-object v1, p0, Lcn/domob/android/ads/r;->g:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/r;->h:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/ads/r;->b:Landroid/content/Context;

    new-instance v4, Lcn/domob/android/ads/r$3;

    invoke-direct {v4, p0}, Lcn/domob/android/ads/r$3;-><init>(Lcn/domob/android/ads/r;)V

    iget-object v5, p0, Lcn/domob/android/ads/r;->k:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcn/domob/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/a/c;Ljava/lang/String;Z)V

    .line 246
    return-void
.end method


# virtual methods
.method protected a()Lcn/domob/android/ads/l;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcn/domob/android/ads/r;->d:Lcn/domob/android/ads/l;

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/domob/android/ads/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/domob/android/ads/r;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcn/domob/android/ads/r;->i:I

    return v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/r;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcn/domob/android/ads/r;->f:Z

    return v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcn/domob/android/ads/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected h()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcn/domob/android/ads/r;->c:Landroid/net/Uri;

    return-object v0
.end method

.method protected i()V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcn/domob/android/ads/r;->c:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcn/domob/android/ads/r;->j()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/r;->g:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "\u5e94\u7528"

    iput-object v0, p0, Lcn/domob/android/ads/r;->g:Ljava/lang/String;

    .line 144
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/r;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/ads/r;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/r;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/domob/android/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_3

    .line 147
    iget-object v1, p0, Lcn/domob/android/ads/r;->b:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 148
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/domob/android/ads/r;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/r;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5df2\u7ecf\u4e0b\u8f7d\u662f\u5426\u73b0\u5728\u5b89\u88c5?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u5426"

    new-instance v3, Lcn/domob/android/ads/r$2;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/r$2;-><init>(Lcn/domob/android/ads/r;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u662f"

    new-instance v3, Lcn/domob/android/ads/r$1;

    invoke-direct {v3, p0, v0}, Lcn/domob/android/ads/r$1;-><init>(Lcn/domob/android/ads/r;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 166
    :cond_2
    :goto_0
    return-void

    .line 164
    :cond_3
    invoke-direct {p0}, Lcn/domob/android/ads/r;->k()V

    goto :goto_0
.end method
