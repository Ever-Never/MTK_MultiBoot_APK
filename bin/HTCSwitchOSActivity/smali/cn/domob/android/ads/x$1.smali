.class Lcn/domob/android/ads/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/x;->a()Landroid/app/Dialog;
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
    .line 175
    iput-object p1, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 178
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->b(Lcn/domob/android/ads/x;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-static {v1}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/x;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->c(Lcn/domob/android/ads/x;)Lcn/domob/android/ads/x$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->c(Lcn/domob/android/ads/x;)Lcn/domob/android/ads/x$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/x$b;->E()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->d(Lcn/domob/android/ads/x;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->c(Lcn/domob/android/ads/x;)Lcn/domob/android/ads/x$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->c(Lcn/domob/android/ads/x;)Lcn/domob/android/ads/x$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/x$b;->D()V

    .line 190
    :cond_1
    return-void
.end method
