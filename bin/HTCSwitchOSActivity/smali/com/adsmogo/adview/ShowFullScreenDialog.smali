.class public Lcom/adsmogo/adview/ShowFullScreenDialog;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/app/Activity;

.field private c:Landroid/webkit/WebView;

.field private d:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Landroid/graphics/drawable/BitmapDrawable;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->a:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->j:Z

    iput-object p1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/adsmogo/adapters/api/PublicCustomAdapter;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->a:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->j:Z

    iput-object p1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    iput-boolean p5, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->g:Z

    iput-object p3, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->d:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adview/ShowFullScreenDialog;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->d:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adview/ShowFullScreenDialog;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/adsmogo/adview/A;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/adsmogo/adview/A;-><init>(Lcom/adsmogo/adview/ShowFullScreenDialog;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/adsmogo/adview/ShowFullScreenDialog$JavaScriptInterface;

    invoke-direct {v2, p0}, Lcom/adsmogo/adview/ShowFullScreenDialog$JavaScriptInterface;-><init>(Lcom/adsmogo/adview/ShowFullScreenDialog;)V

    const-string v3, "javaScriptInterface"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/adsmogo/adview/ShowFullScreenDialog;)V
    .locals 12

    const-wide/high16 v9, 0x407e

    const v4, 0x3f666666

    const-wide v7, 0x3fecccccc0000000L

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getWidthAndHeight(Landroid/content/Context;)[I

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->d:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->d:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->g:Z

    if-eqz v0, :cond_9

    aget v0, v6, v5

    int-to-float v0, v0

    const/high16 v1, 0x4420

    div-float/2addr v0, v1

    float-to-double v0, v0

    aget v3, v6, v2

    int-to-float v3, v3

    const/high16 v4, 0x448e

    div-float/2addr v3, v4

    float-to-double v3, v3

    cmpl-double v7, v0, v3

    if-ltz v7, :cond_3

    :goto_1
    const-wide/high16 v3, 0x4084

    mul-double/2addr v3, v0

    double-to-int v4, v3

    const-wide v7, 0x4091c00000000000L

    mul-double/2addr v0, v7

    double-to-int v3, v0

    aget v0, v6, v5

    sub-int v0, v4, v0

    aget v1, v6, v2

    sub-int v1, v3, v1

    iget-boolean v6, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->h:Z

    if-eqz v6, :cond_6

    if-le v0, v1, :cond_4

    div-int/lit8 v6, v0, 0x2

    :goto_2
    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/adsmogo/adview/ShowFullScreenDialog;->showFullAdDialog(Landroid/view/View;ZIIII)V

    goto :goto_0

    :cond_3
    move-wide v0, v3

    goto :goto_1

    :cond_4
    if-le v1, v0, :cond_5

    div-int/lit8 v0, v1, 0x2

    move v6, v5

    move v5, v0

    goto :goto_2

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    if-le v0, v1, :cond_7

    div-int/lit8 v10, v0, 0x2

    move v11, v5

    :goto_3
    iget-object v6, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    move-object v5, p0

    move v7, v2

    move v8, v4

    move v9, v3

    invoke-virtual/range {v5 .. v11}, Lcom/adsmogo/adview/ShowFullScreenDialog;->showFullAdDialog(Landroid/view/View;ZIIII)V

    goto :goto_0

    :cond_7
    if-le v1, v0, :cond_8

    div-int/lit8 v11, v1, 0x2

    move v10, v5

    goto :goto_3

    :cond_8
    move v10, v5

    move v11, v5

    goto :goto_3

    :cond_9
    iget-boolean v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->h:Z

    if-eqz v0, :cond_b

    aget v0, v6, v5

    div-int/lit16 v0, v0, 0x190

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-double v0, v0

    aget v3, v6, v2

    div-int/lit16 v3, v3, 0x30c

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-double v3, v3

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_a

    :goto_4
    iget-object v3, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    const-wide v4, 0x4085e00000000000L

    mul-double/2addr v4, v0

    mul-double/2addr v4, v7

    double-to-int v4, v4

    mul-double/2addr v0, v9

    mul-double/2addr v0, v7

    double-to-int v0, v0

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->showFullAdDialog(Landroid/view/View;ZII)V

    goto/16 :goto_0

    :cond_a
    move-wide v0, v3

    goto :goto_4

    :cond_b
    aget v0, v6, v5

    div-int/lit16 v0, v0, 0x1e0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-double v0, v0

    aget v3, v6, v2

    div-int/lit16 v3, v3, 0x2bc

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-double v3, v3

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_c

    :goto_5
    iget-object v3, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    mul-double v4, v0, v9

    mul-double/2addr v4, v7

    double-to-int v4, v4

    const-wide v5, 0x4085e00000000000L

    mul-double/2addr v0, v5

    mul-double/2addr v0, v7

    double-to-int v0, v0

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->showFullAdDialog(Landroid/view/View;ZII)V

    goto/16 :goto_0

    :cond_c
    move-wide v0, v3

    goto :goto_5
.end method


# virtual methods
.method public closeDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->getDialogIsOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    iput-object v1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->a:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->c:Landroid/webkit/WebView;

    :cond_1
    return-void
.end method

.method public getDialogIsOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFullAdIsLoadFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->j:Z

    return-void
.end method

.method public showFullAdDialog(Landroid/view/View;Z)V
    .locals 7

    const/4 v5, 0x0

    const/4 v3, -0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/adsmogo/adview/ShowFullScreenDialog;->showFullAdDialog(Landroid/view/View;ZIIII)V

    return-void
.end method

.method public showFullAdDialog(Landroid/view/View;ZII)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/adsmogo/adview/ShowFullScreenDialog;->showFullAdDialog(Landroid/view/View;ZIIII)V

    return-void
.end method

.method public showFullAdDialog(Landroid/view/View;ZIIII)V
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    const v2, 0x1030011

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->a:Landroid/app/Dialog;

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->g:Z

    if-eqz v2, :cond_2

    neg-int v2, p5

    neg-int v3, p6

    neg-int v4, p5

    neg-int v5, p6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-boolean v4, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->g:Z

    if-nez v4, :cond_3

    const/16 v4, 0x1b

    const/16 v5, 0x1b

    const/16 v6, 0x1b

    const/16 v7, 0x1b

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->g:Z

    if-nez v1, :cond_4

    new-instance v1, Lcom/adsmogo/adview/z;

    iget-object v4, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-direct {v1, p0, v4, p3, p4}, Lcom/adsmogo/adview/z;-><init>(Lcom/adsmogo/adview/ShowFullScreenDialog;Landroid/content/Context;II)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    add-int/lit8 v5, p3, 0xc

    add-int/lit8 v6, p4, 0xc

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz p2, :cond_7

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->i:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "/com/adsmogo/assets/adsmogo_fullad_close.png"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->i:Landroid/graphics/drawable/BitmapDrawable;

    :cond_5
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x3c

    const/16 v5, 0x3c

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x35

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->i:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/adsmogo/adview/w;

    invoke-direct {v4, p0}, Lcom/adsmogo/adview/w;-><init>(Lcom/adsmogo/adview/ShowFullScreenDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v4, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->g:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_6
    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->j:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->d:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->d:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public showMogoFullAdDialog()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getScreenIsHorizontal(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->h:Z

    const-string v1, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style>"

    iget-boolean v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->f:Ljava/lang/String;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<a href=\'http://www.adsmogo.com\'><img onError=\"window.javaScriptInterface.adsmogoImageOnError();\" onload=\"window.javaScriptInterface.adsmogoImageOnload();\" width=\'%s\' height=\'%s\' src=\'%s\'></img></a>"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "100%"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "100%"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->d:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "html is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->d:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog;->d:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/adview/y;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/adview/y;-><init>(Lcom/adsmogo/adview/ShowFullScreenDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
