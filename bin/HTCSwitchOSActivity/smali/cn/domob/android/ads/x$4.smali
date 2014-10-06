.class Lcn/domob/android/ads/x$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/x;->n()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/x;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/x;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcn/domob/android/ads/x$4;->a:Lcn/domob/android/ads/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 609
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 610
    iget-object v0, p0, Lcn/domob/android/ads/x$4;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->s(Lcn/domob/android/ads/x;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/x$4;->a:Lcn/domob/android/ads/x;

    iget-object v2, p0, Lcn/domob/android/ads/x$4;->a:Lcn/domob/android/ads/x;

    invoke-static {v2}, Lcn/domob/android/ads/x;->e(Lcn/domob/android/ads/x;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "domob_out_on.png"

    invoke-static {v1, v2, v3}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/x;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 612
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 613
    iget-object v0, p0, Lcn/domob/android/ads/x$4;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->s(Lcn/domob/android/ads/x;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/x$4;->a:Lcn/domob/android/ads/x;

    iget-object v2, p0, Lcn/domob/android/ads/x$4;->a:Lcn/domob/android/ads/x;

    invoke-static {v2}, Lcn/domob/android/ads/x;->e(Lcn/domob/android/ads/x;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "domob_out.png"

    invoke-static {v1, v2, v3}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/x;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
