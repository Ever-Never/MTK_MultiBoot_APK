.class Lcn/domob/android/ads/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/y$d;,
        Lcn/domob/android/ads/y$a;,
        Lcn/domob/android/ads/y$b;,
        Lcn/domob/android/ads/y$c;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/J; = null

.field private static final d:Ljava/lang/String; = "domob_close.png"

.field private static final e:Ljava/lang/String; = "domob_border_black.png"

.field private static final f:Ljava/lang/String; = "domob_border_white.png"

.field private static final g:I = 0x28

.field private static final h:I = 0x28

.field private static final i:I = 0x258

.field private static final j:I = 0x280

.field private static final k:I = 0x21c

.field private static final l:I = 0x140

.field private static final m:I = 0x10e


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/y;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/J;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/y;->b:Landroid/os/Handler;

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/y$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcn/domob/android/ads/y;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/y;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcn/domob/android/ads/y;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcn/domob/android/ads/y$d;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 223
    :cond_0
    sget-object v0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/J;

    const-string v1, "\u9700\u8981\u5f39\u51fa\u663e\u793a\u7684View\u5df2\u7ecf\u88ab\u52a0\u8f7d\u5176\u4ed6ViewGroup\u4e2d\uff0c\u9700\u8981remove\u4e4b\u540e\u663e\u793a\u3002"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 397
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->a(Lcn/domob/android/ads/y$d;)Landroid/content/Context;

    move-result-object v5

    .line 228
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->b(Lcn/domob/android/ads/y$d;)I

    move-result v3

    .line 229
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->c(Lcn/domob/android/ads/y$d;)I

    move-result v1

    .line 233
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->d(Lcn/domob/android/ads/y$d;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, -0x1

    if-eq v3, v0, :cond_16

    .line 234
    int-to-float v0, v3

    invoke-static {v5}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v2, 0x258

    if-ne v0, v2, :cond_f

    .line 235
    const/high16 v0, 0x4420

    invoke-static {v5}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 236
    const/high16 v0, 0x4407

    invoke-static {v5}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 242
    :goto_1
    sget-object v4, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/J;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Borderwidth:borderheight]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, v5}, Lcn/domob/android/ads/y;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 245
    new-instance v4, Landroid/app/Dialog;

    const v6, 0x1030011

    invoke-direct {v4, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcn/domob/android/ads/y;->c:Landroid/app/Dialog;

    .line 249
    :goto_2
    iget-object v4, p0, Lcn/domob/android/ads/y;->c:Landroid/app/Dialog;

    new-instance v6, Lcn/domob/android/ads/y$1;

    invoke-direct {v6, p0, p1, p2}, Lcn/domob/android/ads/y$1;-><init>(Lcn/domob/android/ads/y;Landroid/view/View;Lcn/domob/android/ads/y$d;)V

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 263
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 266
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 268
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->g(Lcn/domob/android/ads/y$d;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    const/16 v4, 0x96

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 275
    :cond_3
    sget-object v4, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/J;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[width:height]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 277
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->d(Lcn/domob/android/ads/y$d;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 281
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->h(Lcn/domob/android/ads/y$d;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 282
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->h(Lcn/domob/android/ads/y$d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->i(Lcn/domob/android/ads/y$d;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 284
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->j(Lcn/domob/android/ads/y$d;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 285
    sget-object v4, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/J;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "final border width&height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 304
    :cond_4
    :goto_3
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->d(Lcn/domob/android/ads/y$d;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 305
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 308
    :goto_4
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->l(Lcn/domob/android/ads/y$d;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {p2}, Lcn/domob/android/ads/y$d;->m(Lcn/domob/android/ads/y$d;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {p2}, Lcn/domob/android/ads/y$d;->n(Lcn/domob/android/ads/y$d;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {p2}, Lcn/domob/android/ads/y$d;->o(Lcn/domob/android/ads/y$d;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 309
    const/16 v8, 0xd

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 311
    :cond_5
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->l(Lcn/domob/android/ads/y$d;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 312
    const/16 v8, 0x9

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 314
    :cond_6
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->n(Lcn/domob/android/ads/y$d;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 315
    const/16 v8, 0xb

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 317
    :cond_7
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->m(Lcn/domob/android/ads/y$d;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 318
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 320
    :cond_8
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->o(Lcn/domob/android/ads/y$d;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 321
    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 324
    :cond_9
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 325
    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 326
    invoke-virtual {v7, p1, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->p(Lcn/domob/android/ads/y$d;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 330
    const/high16 v8, 0x4220

    invoke-static {v5}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 331
    const/high16 v9, 0x4220

    invoke-static {v5}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 333
    new-instance v10, Landroid/widget/ImageButton;

    invoke-direct {v10, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 334
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 335
    const-string v11, "domob_close.png"

    invoke-static {v5, v11}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 337
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->d(Lcn/domob/android/ads/y$d;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, -0x1

    if-eq v3, v8, :cond_b

    .line 338
    sget-object v8, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/J;

    const-string v9, "margin is set"

    invoke-virtual {v8, v9}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 339
    if-le v2, v3, :cond_a

    .line 340
    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 341
    :cond_a
    if-le v0, v1, :cond_b

    .line 342
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 344
    :cond_b
    const/16 v0, 0xb

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 345
    invoke-virtual {v7, v10, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    new-instance v0, Lcn/domob/android/ads/y$2;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/y$2;-><init>(Lcn/domob/android/ads/y;)V

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcn/domob/android/ads/y;->b:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/ads/y$3;

    invoke-direct {v1, p0, v10}, Lcn/domob/android/ads/y$3;-><init>(Lcn/domob/android/ads/y;Landroid/widget/ImageButton;)V

    invoke-static {p2}, Lcn/domob/android/ads/y$d;->q(Lcn/domob/android/ads/y$d;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    :cond_c
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->r(Lcn/domob/android/ads/y$d;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 365
    iget-object v0, p0, Lcn/domob/android/ads/y;->c:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 366
    iget-object v0, p0, Lcn/domob/android/ads/y;->b:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/ads/y$4;

    invoke-direct {v1, p0, p2}, Lcn/domob/android/ads/y$4;-><init>(Lcn/domob/android/ads/y;Lcn/domob/android/ads/y$d;)V

    invoke-static {p2}, Lcn/domob/android/ads/y$d;->q(Lcn/domob/android/ads/y$d;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    :cond_d
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->s(Lcn/domob/android/ads/y$d;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 379
    iget-object v0, p0, Lcn/domob/android/ads/y;->b:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/ads/y$5;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/y$5;-><init>(Lcn/domob/android/ads/y;)V

    invoke-static {p2}, Lcn/domob/android/ads/y$d;->t(Lcn/domob/android/ads/y$d;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    :cond_e
    invoke-virtual {v6, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v0, p0, Lcn/domob/android/ads/y;->c:Landroid/app/Dialog;

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 393
    iget-object v0, p0, Lcn/domob/android/ads/y;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 394
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->f(Lcn/domob/android/ads/y$d;)Lcn/domob/android/ads/y$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 395
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->f(Lcn/domob/android/ads/y$d;)Lcn/domob/android/ads/y$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/y$b;->a()V

    goto/16 :goto_0

    .line 238
    :cond_f
    const/high16 v0, 0x43a0

    invoke-static {v5}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 239
    const/high16 v0, 0x4387

    invoke-static {v5}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto/16 :goto_1

    .line 247
    :cond_10
    new-instance v4, Landroid/app/Dialog;

    const v6, 0x1030010

    invoke-direct {v4, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcn/domob/android/ads/y;->c:Landroid/app/Dialog;

    goto/16 :goto_2

    .line 287
    :cond_11
    sget-object v4, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/J;

    const-string v8, "built in border type"

    invoke-virtual {v4, v8}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 288
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->k(Lcn/domob/android/ads/y$d;)Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    move-result-object v4

    sget-object v8, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->White:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    if-ne v4, v8, :cond_13

    .line 289
    const-string v4, "domob_border_white.png"

    invoke-static {v5, v4}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 290
    if-eqz v4, :cond_12

    .line 291
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :cond_12
    sget-object v4, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/J;

    const-string v8, "white border is set"

    invoke-virtual {v4, v8}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 293
    :cond_13
    invoke-static {p2}, Lcn/domob/android/ads/y$d;->k(Lcn/domob/android/ads/y$d;)Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    move-result-object v4

    sget-object v8, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->Black:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    if-ne v4, v8, :cond_14

    .line 294
    const-string v4, "domob_border_black.png"

    invoke-static {v5, v4}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 295
    if-eqz v4, :cond_4

    .line 296
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 299
    :cond_14
    sget-object v4, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/J;

    const-string v8, "border is not set"

    invoke-virtual {v4, v8}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 307
    :cond_15
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_4

    :cond_16
    move v0, v1

    move v2, v3

    goto/16 :goto_1
.end method

.method static synthetic a(Lcn/domob/android/ads/y;Landroid/view/View;Lcn/domob/android/ads/y$d;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/y;->a(Landroid/view/View;Lcn/domob/android/ads/y$d;)V

    return-void
.end method

.method private a(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 212
    ushr-int v1, p1, v0

    rem-int/lit8 v1, v1, 0x2

    .line 213
    ushr-int v0, p2, v0

    rem-int/lit8 v0, v0, 0x2

    .line 214
    if-ne v1, v0, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 203
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 205
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/y;->a(II)Z

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Lcn/domob/android/ads/J;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/J;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcn/domob/android/ads/y;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/y;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/domob/android/ads/y;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 199
    :cond_0
    return-void
.end method
