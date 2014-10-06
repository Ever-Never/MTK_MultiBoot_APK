.class Lcn/domob/android/ads/V;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lcn/domob/android/ads/J; = null

.field private static final g:J = 0xbb8L

.field private static final h:I = 0x32

.field private static final i:Ljava/lang/String; = "domob_close.png"


# instance fields
.field protected a:Landroid/content/BroadcastReceiver;

.field protected b:F

.field protected c:I

.field protected d:I

.field e:Landroid/widget/FrameLayout;

.field private j:Lcn/domob/android/ads/ac;

.field private k:Landroid/content/Context;

.field private l:Lcn/domob/android/ads/ac$l;

.field private final m:Lcn/domob/android/ads/ac$b;

.field private final n:Lcn/domob/android/ads/ac$d;

.field private o:Landroid/widget/FrameLayout;

.field private p:Z

.field private q:Ljava/lang/Runnable;

.field private r:Landroid/os/Handler;

.field private final s:I

.field private t:Landroid/widget/ImageView;

.field private u:Z

.field private v:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/V;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/V;->f:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>(Lcn/domob/android/ads/ac;Lcn/domob/android/ads/ac$b;Lcn/domob/android/ads/ac$d;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v1, Lcn/domob/android/ads/ac$l;->d:Lcn/domob/android/ads/ac$l;

    iput-object v1, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    .line 59
    new-instance v1, Lcn/domob/android/ads/W;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/W;-><init>(Lcn/domob/android/ads/V;)V

    iput-object v1, p0, Lcn/domob/android/ads/V;->q:Ljava/lang/Runnable;

    .line 71
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/domob/android/ads/V;->r:Landroid/os/Handler;

    .line 81
    new-instance v1, Lcn/domob/android/ads/X;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/X;-><init>(Lcn/domob/android/ads/V;)V

    iput-object v1, p0, Lcn/domob/android/ads/V;->a:Landroid/content/BroadcastReceiver;

    .line 110
    iput v0, p0, Lcn/domob/android/ads/V;->c:I

    .line 112
    iput v0, p0, Lcn/domob/android/ads/V;->d:I

    .line 125
    iput-object p1, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    .line 126
    iput-object p2, p0, Lcn/domob/android/ads/V;->m:Lcn/domob/android/ads/ac$b;

    .line 127
    iput-object p3, p0, Lcn/domob/android/ads/V;->n:Lcn/domob/android/ads/ac$d;

    .line 129
    iget-object v1, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v1}, Lcn/domob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/V;->k:Landroid/content/Context;

    .line 130
    iget-object v1, p0, Lcn/domob/android/ads/V;->k:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/V;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    :cond_0
    iput v0, p0, Lcn/domob/android/ads/V;->s:I

    .line 133
    invoke-direct {p0}, Lcn/domob/android/ads/V;->f()V

    .line 134
    return-void
.end method

.method private a(Landroid/view/View;II)Landroid/view/ViewGroup;
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    const/high16 v2, 0x4248

    iget v3, p0, Lcn/domob/android/ads/V;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 326
    move/from16 v0, p2

    if-ge v0, v2, :cond_0

    move/from16 p2, v2

    .line 328
    :cond_0
    move/from16 v0, p3

    if-ge v0, v2, :cond_1

    move/from16 p3, v2

    .line 331
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v3}, Lcn/domob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 332
    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 334
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v4}, Lcn/domob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 335
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 336
    new-instance v4, Lcn/domob/android/ads/V$1;

    invoke-direct {v4, p0}, Lcn/domob/android/ads/V$1;-><init>(Lcn/domob/android/ads/V;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 342
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v4}, Lcn/domob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 346
    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 347
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 351
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 352
    iget-object v6, p0, Lcn/domob/android/ads/V;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 353
    const/4 v6, 0x0

    aget v6, v5, v6

    .line 354
    const/4 v7, 0x1

    aget v7, v5, v7

    .line 355
    iget-object v8, p0, Lcn/domob/android/ads/V;->k:Landroid/content/Context;

    invoke-static {v8}, Lcn/domob/android/ads/q;->y(Landroid/content/Context;)I

    move-result v8

    .line 356
    iget-object v9, p0, Lcn/domob/android/ads/V;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    .line 357
    sget-object v10, Lcn/domob/android/ads/V;->f:Lcn/domob/android/ads/J;

    const-string v11, "Mraid banner view\'s location on screen is:(%d, %d)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 361
    sub-int/2addr v8, v7

    move/from16 v0, p3

    if-le v8, v0, :cond_2

    .line 363
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 364
    iget v5, p0, Lcn/domob/android/ads/V;->w:I

    sub-int v5, v7, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 374
    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    return-object v2

    .line 365
    :cond_2
    iget v6, p0, Lcn/domob/android/ads/V;->w:I

    sub-int v6, v7, v6

    add-int/2addr v6, v9

    move/from16 v0, p3

    if-le v6, v0, :cond_3

    .line 367
    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 368
    sub-int v5, p3, v9

    sub-int v5, v7, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 371
    :cond_3
    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/V;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcn/domob/android/ads/V;->p:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/V;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcn/domob/android/ads/V;->p:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/V;)Lcn/domob/android/ads/ac;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/V;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcn/domob/android/ads/V;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 383
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    .line 384
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 386
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 390
    :goto_1
    return-void

    .line 384
    :cond_0
    iget v1, p0, Lcn/domob/android/ads/V;->s:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    sget-object v0, Lcn/domob/android/ads/V;->f:Lcn/domob/android/ads/J;

    const-string v1, "Unable to modify device orientation."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private f()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcn/domob/android/ads/ac$l;->a:Lcn/domob/android/ads/ac$l;

    iput-object v0, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    .line 139
    invoke-direct {p0}, Lcn/domob/android/ads/V;->h()V

    .line 142
    return-void
.end method

.method private g()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const-wide/high16 v8, 0x4064

    const/4 v2, 0x0

    .line 145
    iget-object v1, p0, Lcn/domob/android/ads/V;->k:Landroid/content/Context;

    .line 146
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 147
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 148
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 149
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/domob/android/ads/V;->b:F

    .line 152
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 153
    check-cast v0, Landroid/app/Activity;

    .line 154
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 156
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 157
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 158
    const v4, 0x1020002

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 159
    sub-int/2addr v0, v1

    .line 162
    :goto_0
    add-int v4, v1, v0

    iput v4, p0, Lcn/domob/android/ads/V;->w:I

    .line 163
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 164
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v1, v5, v1

    sub-int v0, v1, v0

    .line 165
    sget-object v1, Lcn/domob/android/ads/V;->f:Lcn/domob/android/ads/J;

    const-string v5, "Metrics pixels: width=%d, height=%d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 166
    int-to-double v4, v4

    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v1

    div-double v6, v8, v6

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p0, Lcn/domob/android/ads/V;->c:I

    .line 167
    int-to-double v0, v0

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v3, v3

    div-double v3, v8, v3

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcn/domob/android/ads/V;->d:I

    .line 168
    sget-object v0, Lcn/domob/android/ads/V;->f:Lcn/domob/android/ads/J;

    const-string v1, "Screen size: width=%d, height=%d"

    new-array v3, v11, [Ljava/lang/Object;

    iget v4, p0, Lcn/domob/android/ads/V;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcn/domob/android/ads/V;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 169
    return-void

    :cond_0
    move v0, v2

    move v1, v2

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcn/domob/android/ads/V;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/V;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object v0, p0, Lcn/domob/android/ads/V;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/V;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 236
    iget-object v0, p0, Lcn/domob/android/ads/V;->o:Landroid/widget/FrameLayout;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 237
    iget-object v1, p0, Lcn/domob/android/ads/V;->o:Landroid/widget/FrameLayout;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 239
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/domob/android/ads/V;->a(Z)V

    .line 240
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 241
    iget-object v0, p0, Lcn/domob/android/ads/V;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->requestLayout()V

    .line 245
    iget-object v0, p0, Lcn/domob/android/ads/V;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 248
    iget-object v1, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    iget v2, p0, Lcn/domob/android/ads/V;->v:I

    iget-object v3, p0, Lcn/domob/android/ads/V;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v1, p0, Lcn/domob/android/ads/V;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 250
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 252
    instance-of v1, v0, Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 253
    check-cast v1, Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    move-object v1, v0

    .line 254
    check-cast v1, Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 255
    check-cast v0, Landroid/widget/ViewFlipper;

    iget v1, p0, Lcn/domob/android/ads/V;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 257
    :cond_0
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    .line 303
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 304
    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 307
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcn/domob/android/ads/V;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/ads/V;->e:Landroid/widget/FrameLayout;

    .line 308
    iget-object v1, p0, Lcn/domob/android/ads/V;->e:Landroid/widget/FrameLayout;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 312
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    if-ne v3, v4, :cond_2

    .line 317
    :cond_1
    sget-object v2, Lcn/domob/android/ads/V;->f:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current MRAID view\'s index is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 318
    iput v1, p0, Lcn/domob/android/ads/V;->v:I

    .line 319
    iget-object v2, p0, Lcn/domob/android/ads/V;->e:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v4}, Lcn/domob/android/ads/ac;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v5}, Lcn/domob/android/ads/ac;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v1, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 312
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcn/domob/android/ads/V;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/V;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method protected a(Ljava/lang/String;IIZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 260
    iget-object v0, p0, Lcn/domob/android/ads/V;->m:Lcn/domob/android/ads/ac$b;

    sget-object v1, Lcn/domob/android/ads/ac$b;->b:Lcn/domob/android/ads/ac$b;

    if-ne v0, v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    const-string v1, "expand"

    const-string v2, "URL passed to expand() was invalid."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/ac;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/domob/android/ads/V;->o:Landroid/widget/FrameLayout;

    .line 275
    invoke-virtual {p0, p4}, Lcn/domob/android/ads/V;->b(Z)V

    .line 276
    invoke-direct {p0, p5}, Lcn/domob/android/ads/V;->c(Z)V

    .line 277
    invoke-direct {p0}, Lcn/domob/android/ads/V;->j()V

    .line 279
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    .line 281
    if-eqz p1, :cond_3

    .line 282
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->a()Lcn/domob/android/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->b()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/c;->loadUrl(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->a()Lcn/domob/android/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->b()Lcn/domob/android/ads/c;

    move-result-object v0

    .line 286
    :cond_3
    int-to-float v1, p2

    iget v2, p0, Lcn/domob/android/ads/V;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcn/domob/android/ads/V;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcn/domob/android/ads/V;->a(Landroid/view/View;II)Landroid/view/ViewGroup;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcn/domob/android/ads/V;->o:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v0, p0, Lcn/domob/android/ads/V;->n:Lcn/domob/android/ads/ac$d;

    sget-object v1, Lcn/domob/android/ads/ac$d;->a:Lcn/domob/android/ads/ac$d;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcn/domob/android/ads/V;->u:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/domob/android/ads/V;->n:Lcn/domob/android/ads/ac$d;

    sget-object v1, Lcn/domob/android/ads/ac$d;->b:Lcn/domob/android/ads/ac$d;

    if-eq v0, v1, :cond_5

    .line 293
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/V;->a(Z)V

    .line 296
    :cond_5
    sget-object v0, Lcn/domob/android/ads/ac$l;->c:Lcn/domob/android/ads/ac$l;

    iput-object v0, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    .line 297
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    iget-object v1, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    invoke-static {v1}, Lcn/domob/android/ads/ab;->a(Lcn/domob/android/ads/ac$l;)Lcn/domob/android/ads/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/ac;->a(Lcn/domob/android/ads/Z;)V

    .line 298
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->d()Lcn/domob/android/ads/ac$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->d()Lcn/domob/android/ads/ac$g;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/ac$g;->a(Lcn/domob/android/ads/ac;)V

    goto/16 :goto_0
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcn/domob/android/ads/V;->o:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/V;->o:Landroid/widget/FrameLayout;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 399
    if-eqz p1, :cond_3

    .line 400
    iget-object v1, p0, Lcn/domob/android/ads/V;->t:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 401
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v2}, Lcn/domob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/ads/V;->t:Landroid/widget/ImageView;

    .line 402
    iget-object v1, p0, Lcn/domob/android/ads/V;->t:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/android/ads/V;->k:Landroid/content/Context;

    const-string v3, "domob_close.png"

    invoke-static {v2, v3}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object v1, p0, Lcn/domob/android/ads/V;->t:Landroid/widget/ImageView;

    new-instance v2, Lcn/domob/android/ads/V$2;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/V$2;-><init>(Lcn/domob/android/ads/V;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :cond_2
    const/high16 v1, 0x4248

    iget v2, p0, Lcn/domob/android/ads/V;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 411
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 412
    iget-object v1, p0, Lcn/domob/android/ads/V;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    .line 418
    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->h()Lcn/domob/android/ads/ac$e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->h()Lcn/domob/android/ads/ac$e;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcn/domob/android/ads/ac$e;->a(Lcn/domob/android/ads/ac;Z)V

    goto :goto_0

    .line 414
    :cond_3
    iget-object v1, p0, Lcn/domob/android/ads/V;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 201
    invoke-direct {p0}, Lcn/domob/android/ads/V;->g()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget v1, p0, Lcn/domob/android/ads/V;->c:I

    iget v2, p0, Lcn/domob/android/ads/V;->d:I

    invoke-static {v1, v2}, Lcn/domob/android/ads/aa;->a(II)Lcn/domob/android/ads/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-boolean v1, p0, Lcn/domob/android/ads/V;->p:Z

    invoke-static {v1}, Lcn/domob/android/ads/ad;->a(Z)Lcn/domob/android/ads/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/ac;->a(Ljava/util/ArrayList;)V

    .line 207
    sget-object v0, Lcn/domob/android/ads/ac$l;->b:Lcn/domob/android/ads/ac$l;

    iput-object v0, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    .line 208
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    iget-object v1, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    invoke-static {v1}, Lcn/domob/android/ads/ab;->a(Lcn/domob/android/ads/ac$l;)Lcn/domob/android/ads/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/ac;->a(Lcn/domob/android/ads/Z;)V

    .line 209
    return-void
.end method

.method protected b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 424
    iput-boolean p1, p0, Lcn/domob/android/ads/V;->u:Z

    .line 426
    iget-object v1, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    .line 427
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 428
    :goto_0
    invoke-virtual {v1}, Lcn/domob/android/ads/ac;->h()Lcn/domob/android/ads/ac$e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v1}, Lcn/domob/android/ads/ac;->h()Lcn/domob/android/ads/ac$e;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcn/domob/android/ads/ac$e;->a(Lcn/domob/android/ads/ac;Z)V

    .line 431
    :cond_0
    return-void

    .line 427
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    sget-object v1, Lcn/domob/android/ads/ac$l;->c:Lcn/domob/android/ads/ac$l;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 216
    sget-object v0, Lcn/domob/android/ads/V;->f:Lcn/domob/android/ads/J;

    const-string v1, "MRAID expandable part will be closed."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    sget-object v1, Lcn/domob/android/ads/ac$l;->c:Lcn/domob/android/ads/ac$l;

    if-ne v0, v1, :cond_2

    .line 218
    sget-object v0, Lcn/domob/android/ads/V;->f:Lcn/domob/android/ads/J;

    const-string v1, "MRAID view state is expanded and expand part will be closed."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcn/domob/android/ads/V;->i()V

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/V;->c(Z)V

    .line 221
    sget-object v0, Lcn/domob/android/ads/ac$l;->b:Lcn/domob/android/ads/ac$l;

    iput-object v0, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    .line 222
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    iget-object v1, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    invoke-static {v1}, Lcn/domob/android/ads/ab;->a(Lcn/domob/android/ads/ac$l;)Lcn/domob/android/ads/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/ac;->a(Lcn/domob/android/ads/Z;)V

    .line 230
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->e()Lcn/domob/android/ads/ac$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->e()Lcn/domob/android/ads/ac$f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    iget-object v2, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    invoke-interface {v0, v1, v2}, Lcn/domob/android/ads/ac$f;->a(Lcn/domob/android/ads/ac;Lcn/domob/android/ads/ac$l;)V

    .line 233
    :cond_1
    return-void

    .line 223
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    sget-object v1, Lcn/domob/android/ads/ac$l;->b:Lcn/domob/android/ads/ac$l;

    if-ne v0, v1, :cond_0

    .line 224
    sget-object v0, Lcn/domob/android/ads/V;->f:Lcn/domob/android/ads/J;

    const-string v1, "MRAID view state is default and MRAID view will be hidden."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/ac;->setVisibility(I)V

    .line 226
    sget-object v0, Lcn/domob/android/ads/ac$l;->d:Lcn/domob/android/ads/ac$l;

    iput-object v0, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    .line 227
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    iget-object v1, p0, Lcn/domob/android/ads/V;->l:Lcn/domob/android/ads/ac$l;

    invoke-static {v1}, Lcn/domob/android/ads/ab;->a(Lcn/domob/android/ads/ac$l;)Lcn/domob/android/ads/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/ac;->a(Lcn/domob/android/ads/Z;)V

    goto :goto_0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcn/domob/android/ads/V;->j:Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
