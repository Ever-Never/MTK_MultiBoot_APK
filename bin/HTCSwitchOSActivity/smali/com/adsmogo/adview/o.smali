.class public final Lcom/adsmogo/adview/o;
.super Landroid/view/View;


# instance fields
.field a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Z

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/adsmogo/adview/o;->f:Z

    iput v0, p0, Lcom/adsmogo/adview/o;->a:I

    new-instance v0, Lcom/adsmogo/adview/p;

    invoke-direct {v0, p0}, Lcom/adsmogo/adview/p;-><init>(Lcom/adsmogo/adview/o;)V

    iput-object v0, p0, Lcom/adsmogo/adview/o;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 10

    const/16 v1, 0x8

    :try_start_0
    iput p1, p0, Lcom/adsmogo/adview/o;->a:I

    iget-boolean v0, p0, Lcom/adsmogo/adview/o;->f:Z

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Progress not init"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/o;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adsmogo/adview/o;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/o;->setVisibility(I)V

    :cond_2
    int-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iget v1, p0, Lcom/adsmogo/adview/o;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/adsmogo/adview/o;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adsmogo/adview/o;->d:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/adsmogo/adview/o;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adview/o;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/adsmogo/adview/o;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v6, 0x40a0

    const/high16 v7, 0x40a0

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/adsmogo/adview/o;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/adsmogo/adview/o;->invalidate()V

    :goto_1
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/o;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsmogo/adview/o;->g:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdsWebViewProgressBar setProgress err"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v0, "AdsMOGO SDK"

    const-string v1, "barBG is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/o;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adsmogo/adview/o;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adsmogo/adview/o;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/o;->e:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 7

    const/high16 v6, 0x3f80

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/adsmogo/adview/o;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adview/o;->b:I

    invoke-virtual {p0}, Lcom/adsmogo/adview/o;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adview/o;->c:I

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/com/adsmogo/assets/progressbarbg.png"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adview/o;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/adsmogo/adview/o;->d:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/adsmogo/adview/o;->b:I

    iget v3, p0, Lcom/adsmogo/adview/o;->c:I

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adview/o;->d:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/o;->f:Z

    iget v0, p0, Lcom/adsmogo/adview/o;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/adsmogo/adview/o;->a:I

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/o;->a(I)V

    :cond_0
    const-string v0, "AdsMOGO SDK"

    const-string v1, "WebView ProgressBar init  ok"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method
