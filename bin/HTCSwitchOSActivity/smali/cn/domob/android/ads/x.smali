.class Lcn/domob/android/ads/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/x$a;,
        Lcn/domob/android/ads/x$b;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "domob_banner.png"

.field private static final B:Ljava/lang/String; = "domob_exit.png"

.field private static final C:Ljava/lang/String; = "domob_exit_on.png"

.field private static final D:Ljava/lang/String; = "domob_loading.png"

.field private static final E:Ljava/lang/String; = "domob_next_off.png"

.field private static final F:Ljava/lang/String; = "domob_next.png"

.field private static final G:Ljava/lang/String; = "domob_next_on.png"

.field private static final H:Ljava/lang/String; = "domob_out.png"

.field private static final I:Ljava/lang/String; = "domob_out_on.png"

.field private static final J:Ljava/lang/String; = "domob_preview_off.png"

.field private static final K:Ljava/lang/String; = "domob_preview.png"

.field private static final L:Ljava/lang/String; = "domob_preview_on.png"

.field private static final M:Ljava/lang/String; = "domob_refresh.png"

.field private static final N:Ljava/lang/String; = "domob_refresh_on.png"

.field private static final O:I = 0x23

.field private static final P:I = 0x23

.field private static final Q:I = 0x2d

.field private static final R:I = 0x1f4

.field private static final S:[Ljava/lang/String; = null

.field private static a:Lcn/domob/android/ads/J; = null

.field private static final w:Ljava/lang/String; = "domob"

.field private static final x:Ljava/lang/String; = "close"

.field private static final y:Ljava/lang/String; = "inapp"

.field private static final z:Ljava/lang/String; = "url"


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/Dialog;

.field private g:Lcn/domob/android/ads/x$b;

.field private h:Landroid/os/Handler;

.field private i:Landroid/widget/RelativeLayout;

.field private j:F

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/animation/RotateAnimation;

.field private s:Landroid/view/animation/Animation;

.field private t:Landroid/view/animation/Animation;

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/x;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/x;->a:Lcn/domob/android/ads/J;

    .line 111
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".asf"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".avi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".m4u"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ".m4v"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".mov"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".mpe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".mpeg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".mpg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".mpg4"

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/android/ads/x;->S:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/x$b;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcn/domob/android/ads/x;->c:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    .line 68
    iput-object v0, p0, Lcn/domob/android/ads/x;->f:Landroid/app/Dialog;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/x;->h:Landroid/os/Handler;

    .line 72
    const/high16 v0, 0x3f80

    iput v0, p0, Lcn/domob/android/ads/x;->j:F

    .line 85
    iput-boolean v1, p0, Lcn/domob/android/ads/x;->u:Z

    .line 86
    iput-boolean v1, p0, Lcn/domob/android/ads/x;->v:Z

    .line 115
    sget-object v0, Lcn/domob/android/ads/x;->a:Lcn/domob/android/ads/J;

    const-string v1, "Initialize DomobLandingPageBuilder"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/x;->j:F

    .line 118
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    .line 119
    iput-object p2, p0, Lcn/domob/android/ads/x;->c:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcn/domob/android/ads/x;->e:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Lcn/domob/android/ads/x;->g:Lcn/domob/android/ads/x$b;

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcn/domob/android/ads/x;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/x;->k:Landroid/view/View;

    .line 125
    invoke-direct {p0}, Lcn/domob/android/ads/x;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    sget-object v1, Lcn/domob/android/ads/x;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 365
    const/4 v1, 0x0

    .line 367
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-object v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    sget-object v2, Lcn/domob/android/ads/x;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 370
    sget-object v0, Lcn/domob/android/ads/x;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/x;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/x;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/x;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x420c

    .line 377
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 378
    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcn/domob/android/ads/x;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 381
    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 385
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    return-object v0
.end method

.method private a(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 237
    ushr-int v1, p1, v0

    rem-int/lit8 v1, v1, 0x2

    .line 238
    ushr-int v0, p2, v0

    rem-int/lit8 v0, v0, 0x2

    .line 239
    if-ne v1, v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/x;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcn/domob/android/ads/x;->v:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/x;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/android/ads/J;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcn/domob/android/ads/x;->a:Lcn/domob/android/ads/J;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/x;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcn/domob/android/ads/x;->u:Z

    return p1
.end method

.method static synthetic c(Lcn/domob/android/ads/x;)Lcn/domob/android/ads/x$b;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->g:Lcn/domob/android/ads/x$b;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcn/domob/android/ads/x;->S:[Ljava/lang/String;

    return-object v0
.end method

.method private d()Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 199
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 200
    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    const-string v2, "domob_banner.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/x;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-direct {p0}, Lcn/domob/android/ads/x;->j()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    invoke-direct {p0}, Lcn/domob/android/ads/x;->l()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    invoke-direct {p0}, Lcn/domob/android/ads/x;->p()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    invoke-direct {p0}, Lcn/domob/android/ads/x;->n()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    invoke-direct {p0}, Lcn/domob/android/ads/x;->h()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/x;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcn/domob/android/ads/x;->u:Z

    return v0
.end method

.method static synthetic e(Lcn/domob/android/ads/x;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 211
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    .line 212
    iget-object v0, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v5, "assets/domob_loading.png"

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->r:Landroid/view/animation/RotateAnimation;

    .line 216
    iget-object v0, p0, Lcn/domob/android/ads/x;->r:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 217
    iget-object v0, p0, Lcn/domob/android/ads/x;->r:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 218
    iget-object v0, p0, Lcn/domob/android/ads/x;->r:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 219
    return-void
.end method

.method static synthetic f(Lcn/domob/android/ads/x;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/domob/android/ads/x;->s()V

    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 228
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/x;->a(II)Z

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Landroid/webkit/WebView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 247
    invoke-direct {p0}, Lcn/domob/android/ads/x;->s()V

    .line 248
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/x$7;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$7;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 337
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/x$a;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$a;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 338
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/x$8;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$8;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 346
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 348
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 349
    iget-object v1, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/android/ads/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/ads/x;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/domob/android/ads/x;->t()V

    return-void
.end method

.method private h()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/high16 v4, 0x420c

    .line 464
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->p:Landroid/widget/ImageButton;

    .line 468
    const-string v0, "domob_exit.png"

    .line 469
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 470
    iget-object v2, p0, Lcn/domob/android/ads/x;->p:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    iget-object v1, p0, Lcn/domob/android/ads/x;->p:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/x$9;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/x$9;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v1, p0, Lcn/domob/android/ads/x;->p:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/x$10;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/x$10;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 490
    iget-object v1, p0, Lcn/domob/android/ads/x;->p:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/x;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcn/domob/android/ads/x;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->e:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1f4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 494
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->t:Landroid/view/animation/Animation;

    .line 496
    iget-object v0, p0, Lcn/domob/android/ads/x;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 497
    iget-object v0, p0, Lcn/domob/android/ads/x;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/x;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 499
    iget-object v0, p0, Lcn/domob/android/ads/x;->h:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/ads/x$11;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$11;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    return-void
.end method

.method static synthetic i(Lcn/domob/android/ads/x;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/domob/android/ads/x;->i()V

    return-void
.end method

.method private j()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c

    .line 508
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->l:Landroid/widget/ImageButton;

    .line 509
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 511
    iget-object v1, p0, Lcn/domob/android/ads/x;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const-string v0, "domob_preview.png"

    .line 519
    :goto_0
    iget-object v1, p0, Lcn/domob/android/ads/x;->l:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/x$12;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/x$12;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    iget-object v1, p0, Lcn/domob/android/ads/x;->l:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/x$13;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/x$13;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 538
    iget-object v1, p0, Lcn/domob/android/ads/x;->l:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/x;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    .line 516
    :cond_0
    const-string v0, "domob_preview_off.png"

    goto :goto_0
.end method

.method static synthetic j(Lcn/domob/android/ads/x;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/domob/android/ads/x;->r()V

    return-void
.end method

.method static synthetic k(Lcn/domob/android/ads/x;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->p:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 548
    invoke-direct {p0}, Lcn/domob/android/ads/x;->r()V

    goto :goto_0
.end method

.method static synthetic l(Lcn/domob/android/ads/x;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method private l()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c

    .line 553
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->m:Landroid/widget/ImageButton;

    .line 554
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 556
    iget-object v1, p0, Lcn/domob/android/ads/x;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    const-string v0, "domob_next_off.png"

    .line 559
    iget-object v0, p0, Lcn/domob/android/ads/x;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/x$14;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$14;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    iget-object v0, p0, Lcn/domob/android/ads/x;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/x$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$2;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 577
    const-string v0, "domob_next_off.png"

    iget-object v1, p0, Lcn/domob/android/ads/x;->m:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/x;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 587
    invoke-direct {p0}, Lcn/domob/android/ads/x;->r()V

    goto :goto_0
.end method

.method static synthetic m(Lcn/domob/android/ads/x;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/domob/android/ads/x;->k()V

    return-void
.end method

.method static synthetic n(Lcn/domob/android/ads/x;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->l:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private n()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c

    .line 592
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->n:Landroid/widget/ImageButton;

    .line 593
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 595
    iget-object v1, p0, Lcn/domob/android/ads/x;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    const-string v0, "domob_out.png"

    .line 597
    iget-object v0, p0, Lcn/domob/android/ads/x;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/x$3;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$3;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v0, p0, Lcn/domob/android/ads/x;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/x$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$4;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 618
    const-string v0, "domob_out.png"

    iget-object v1, p0, Lcn/domob/android/ads/x;->n:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/x;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Lcn/domob/android/ads/x;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 623
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 624
    iget-object v0, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 625
    return-void
.end method

.method static synthetic o(Lcn/domob/android/ads/x;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/domob/android/ads/x;->m()V

    return-void
.end method

.method static synthetic p(Lcn/domob/android/ads/x;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->m:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private p()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c

    .line 628
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->o:Landroid/widget/ImageButton;

    .line 629
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 631
    iget-object v1, p0, Lcn/domob/android/ads/x;->o:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    const-string v0, "domob_refresh.png"

    .line 633
    iget-object v0, p0, Lcn/domob/android/ads/x;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/x$5;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$5;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object v0, p0, Lcn/domob/android/ads/x;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/x$6;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$6;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 656
    const-string v0, "domob_refresh.png"

    iget-object v1, p0, Lcn/domob/android/ads/x;->o:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/x;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method static synthetic q(Lcn/domob/android/ads/x;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/domob/android/ads/x;->o()V

    return-void
.end method

.method static synthetic r(Lcn/domob/android/ads/x;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcn/domob/android/ads/x;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    const-string v2, "domob_preview.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/x;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 677
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcn/domob/android/ads/x;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    const-string v2, "domob_next.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/x;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 682
    :goto_1
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/x;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    const-string v2, "domob_preview_off.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/x;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 680
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/x;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    const-string v2, "domob_next_off.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/x;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic s(Lcn/domob/android/ads/x;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->n:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private s()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 685
    iget-object v0, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/x;->r:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 689
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 685
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 692
    iget-object v0, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    iget-boolean v3, p0, Lcn/domob/android/ads/x;->v:Z

    if-nez v3, :cond_3

    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 694
    iget-object v0, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 696
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 692
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method static synthetic t(Lcn/domob/android/ads/x;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/domob/android/ads/x;->q()V

    return-void
.end method

.method static synthetic u(Lcn/domob/android/ads/x;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/x;->o:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/app/Dialog;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/high16 v7, 0x4234

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, -0x2

    .line 138
    sget-object v0, Lcn/domob/android/ads/x;->a:Lcn/domob/android/ads/J;

    const-string v3, "Start to build FS/RFS landingpage"

    invoke-virtual {v0, p0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->i:Landroid/widget/RelativeLayout;

    .line 140
    iget-object v0, p0, Lcn/domob/android/ads/x;->i:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v0, p0, Lcn/domob/android/ads/x;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/domob/android/ads/x;->g()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 145
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    iget-object v3, p0, Lcn/domob/android/ads/x;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/x;->q:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-direct {p0}, Lcn/domob/android/ads/x;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    const v4, 0x1030011

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->f:Landroid/app/Dialog;

    .line 152
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    iget-object v3, p0, Lcn/domob/android/ads/x;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/domob/android/ads/x;->h()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->s:Landroid/view/animation/Animation;

    .line 167
    iget-object v0, p0, Lcn/domob/android/ads/x;->s:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 168
    iget-object v0, p0, Lcn/domob/android/ads/x;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/x;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    iget-object v0, p0, Lcn/domob/android/ads/x;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f00

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 171
    iget-object v0, p0, Lcn/domob/android/ads/x;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 173
    iget-object v0, p0, Lcn/domob/android/ads/x;->f:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/android/ads/x;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcn/domob/android/ads/x;->f:Landroid/app/Dialog;

    new-instance v1, Lcn/domob/android/ads/x$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$1;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 193
    iget-object v0, p0, Lcn/domob/android/ads/x;->f:Landroid/app/Dialog;

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/domob/android/ads/x;->d:Landroid/content/Context;

    const v4, 0x1030010

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/ads/x;->f:Landroid/app/Dialog;

    .line 158
    iget-object v0, p0, Lcn/domob/android/ads/x;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/x;->j:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    iget-object v3, p0, Lcn/domob/android/ads/x;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/x;->k:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
