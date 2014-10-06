.class final Lcom/adsmogo/adview/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoWebView;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/l;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsmogo/adview/l;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->b(Lcom/adsmogo/adview/AdsMogoWebView;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsmogo/adview/l;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v1}, Lcom/adsmogo/adview/AdsMogoWebView;->c(Lcom/adsmogo/adview/AdsMogoWebView;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/l;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adview/l;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adview/l;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adview/l;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->d(Lcom/adsmogo/adview/AdsMogoWebView;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/adsmogo/adview/l;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adview/l;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/adsmogo/adview/l;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->e(Lcom/adsmogo/adview/AdsMogoWebView;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/l;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-virtual {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->finish()V

    goto :goto_0
.end method
