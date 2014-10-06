.class Lcn/domob/android/ads/y$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/y;->a(Landroid/view/View;Lcn/domob/android/ads/y$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/y$d;

.field final synthetic b:Lcn/domob/android/ads/y;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/y;Lcn/domob/android/ads/y$d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcn/domob/android/ads/y$4;->b:Lcn/domob/android/ads/y;

    iput-object p2, p0, Lcn/domob/android/ads/y$4;->a:Lcn/domob/android/ads/y$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Lcn/domob/android/ads/y;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "\u5c55\u73b0\u65f6\u95f4\u5230\u8fbe\u6700\u5c0f\u5c55\u73b0\u65f6\u95f4\u3002"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcn/domob/android/ads/y$4;->b:Lcn/domob/android/ads/y;

    invoke-static {v0}, Lcn/domob/android/ads/y;->a(Lcn/domob/android/ads/y;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 371
    iget-object v0, p0, Lcn/domob/android/ads/y$4;->a:Lcn/domob/android/ads/y$d;

    invoke-static {v0}, Lcn/domob/android/ads/y$d;->f(Lcn/domob/android/ads/y$d;)Lcn/domob/android/ads/y$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcn/domob/android/ads/y$4;->a:Lcn/domob/android/ads/y$d;

    invoke-static {v0}, Lcn/domob/android/ads/y$d;->f(Lcn/domob/android/ads/y$d;)Lcn/domob/android/ads/y$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/y$b;->b()V

    .line 374
    :cond_0
    return-void
.end method
