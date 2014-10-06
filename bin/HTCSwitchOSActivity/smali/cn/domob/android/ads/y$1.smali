.class Lcn/domob/android/ads/y$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/y;->a(Landroid/view/View;Lcn/domob/android/ads/y$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/domob/android/ads/y$d;

.field final synthetic c:Lcn/domob/android/ads/y;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/y;Landroid/view/View;Lcn/domob/android/ads/y$d;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcn/domob/android/ads/y$1;->c:Lcn/domob/android/ads/y;

    iput-object p2, p0, Lcn/domob/android/ads/y$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcn/domob/android/ads/y$1;->b:Lcn/domob/android/ads/y$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 252
    iget-object v0, p0, Lcn/domob/android/ads/y$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 253
    iget-object v0, p0, Lcn/domob/android/ads/y$1;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0}, Lcn/domob/android/ads/y$d;->e(Lcn/domob/android/ads/y$d;)Lcn/domob/android/ads/y$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcn/domob/android/ads/y$1;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0}, Lcn/domob/android/ads/y$d;->e(Lcn/domob/android/ads/y$d;)Lcn/domob/android/ads/y$c;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/y$c;->a()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/y$1;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0}, Lcn/domob/android/ads/y$d;->f(Lcn/domob/android/ads/y$d;)Lcn/domob/android/ads/y$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcn/domob/android/ads/y$1;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0}, Lcn/domob/android/ads/y$d;->f(Lcn/domob/android/ads/y$d;)Lcn/domob/android/ads/y$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/y$b;->c()V

    .line 260
    :cond_1
    return-void
.end method
