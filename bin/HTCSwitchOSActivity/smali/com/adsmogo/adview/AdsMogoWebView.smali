.class public Lcom/adsmogo/adview/AdsMogoWebView;
.super Landroid/app/Activity;


# static fields
.field public static adapter:Lcom/adsmogo/adapters/AdsMogoAdapter;


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Lcom/adsmogo/adview/o;

.field c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Z

.field private i:Landroid/graphics/drawable/BitmapDrawable;

.field private j:Landroid/graphics/drawable/BitmapDrawable;

.field private k:Landroid/os/Handler;

.field private l:Landroid/os/Handler;

.field private m:Z

.field private n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->c:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->k:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->l:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->m:Z

    new-instance v0, Lcom/adsmogo/adview/h;

    invoke-direct {v0, p0}, Lcom/adsmogo/adview/h;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/adsmogo/adview/i;

    invoke-direct {v0, p0}, Lcom/adsmogo/adview/i;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adview/AdsMogoWebView;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/adsmogo/adview/AdsMogoWebView;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "tel:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/adsmogo/adview/AdsMogoWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "open tel err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "market://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoWebView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/adsmogo/adview/AdsMogoWebView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "\u65e0\u53ef\u7528\u5e02\u573a"

    const/16 v2, 0xc8

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adview/AdsMogoWebView;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adview/AdsMogoWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/adsmogo/adview/AdsMogoWebView;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->j:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic b(Lcom/adsmogo/adview/AdsMogoWebView;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Z

    return-void
.end method

.method static synthetic c(Lcom/adsmogo/adview/AdsMogoWebView;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->i:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic d(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "\u9009\u62e9\u5206\u4eab\u65b9\u5f0f"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/AdsMogoWebView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->c:Z

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/com/adsmogo/assets/webview_bar_back.png"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsmogo/adview/l;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/l;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/com/adsmogo/assets/webview_bar_next.png"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsmogo/adview/l;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/l;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/com/adsmogo/assets/webview_bar_refresh.png"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsmogo/adview/l;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/l;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/com/adsmogo/assets/webview_bar_back_grey.png"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/com/adsmogo/assets/webview_bar_next_grey.png"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/adsmogo/adview/AdsMogoWebView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/adsmogo/adview/AdsMogoWebView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->c:Z

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/com/adsmogo/assets/webview_bar_pause.png"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsmogo/adview/l;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/l;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic i(Lcom/adsmogo/adview/AdsMogoWebView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/adsmogo/adview/AdsMogoWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Z

    return v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static/range {p0 .. p0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v4

    const/16 v6, 0x2b

    invoke-static {v6, v4, v5}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v6

    int-to-double v6, v6

    const/16 v8, 0xa

    invoke-static {v8, v4, v5}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v4

    int-to-double v4, v4

    new-instance v8, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    double-to-int v4, v4

    invoke-direct {v10, v11, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v4, Lcom/adsmogo/adview/o;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/adsmogo/adview/o;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/adsmogo/adview/AdsMogoWebView;->b:Lcom/adsmogo/adview/o;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adview/AdsMogoWebView;->b:Lcom/adsmogo/adview/o;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/adsmogo/adview/o;->setVisibility(I)V

    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v5, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x2

    const/16 v12, 0x33

    invoke-virtual {v5, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    double-to-int v13, v6

    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v12, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v13, 0x33

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    double-to-int v6, v6

    const/high16 v7, 0x3f80

    invoke-direct {v13, v14, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0x10

    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v14, "/com/adsmogo/assets/webview_bar_bgimg.png"

    invoke-virtual {v7, v14}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->i:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v14, "/com/adsmogo/assets/webview_bar_bgimg_prs.png"

    invoke-virtual {v7, v14}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->j:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v14, "/com/adsmogo/assets/webview_bar_back_grey.png"

    invoke-virtual {v7, v14}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "/com/adsmogo/assets/webview_bar_next_grey.png"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v7, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v16, "/com/adsmogo/assets/webview_bar_pause.png"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    const-string v17, "/com/adsmogo/assets/webview_bar_share.png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "/com/adsmogo/assets/webview_bar_close.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    new-instance v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adsmogo/adview/AdsMogoWebView;->e:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->i:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Landroid/widget/ImageView;

    const/16 v17, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/16 v20, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->i:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/16 v17, 0xc

    const/16 v18, 0x0

    const/16 v19, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adview/AdsMogoWebView;->i:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/16 v14, 0xc

    const/16 v17, 0x0

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v7, v14, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adview/AdsMogoWebView;->i:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lcom/adsmogo/adview/l;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/adsmogo/adview/l;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v7, 0x0

    const/16 v14, 0xc

    const/4 v15, 0x0

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v6, v7, v14, v15, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x5

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adsmogo/adview/AdsMogoWebView;->i:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v14, Lcom/adsmogo/adview/l;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/adsmogo/adview/l;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/16 v17, 0xc

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v14, v15, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Landroid/widget/ImageView;

    invoke-virtual {v12, v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    invoke-virtual {v12, v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    invoke-virtual {v12, v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12, v6, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12, v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v12, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adview/AdsMogoWebView;->b:Lcom/adsmogo/adview/o;

    invoke-virtual {v8, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4}, Lcom/adsmogo/adview/AdsMogoWebView;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    new-instance v5, Lcom/adsmogo/adview/n;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/adsmogo/adview/n;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual/range {p0 .. p0}, Lcom/adsmogo/adview/AdsMogoWebView;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "link"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/adsmogo/adview/AdsMogoWebView;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/adsmogo/adview/AdsMogoWebView;->finish()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adview/AdsMogoWebView;->k:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adview/AdsMogoWebView;->n:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    new-instance v5, Lcom/adsmogo/adview/k;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/adsmogo/adview/k;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    new-instance v5, Lcom/adsmogo/adview/m;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/adsmogo/adview/m;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    new-instance v6, Lcom/adsmogo/adview/j;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/adsmogo/adview/j;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    const-string v7, "local_obj"

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
