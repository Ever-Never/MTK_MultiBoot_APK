.class Lcn/domob/android/ads/y$5;
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
.field final synthetic a:Lcn/domob/android/ads/y;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/y;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcn/domob/android/ads/y$5;->a:Lcn/domob/android/ads/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Lcn/domob/android/ads/y;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "\u5c55\u73b0\u65f6\u95f4\u5230\u8fbe\u81ea\u52a8\u5173\u95ed\u65f6\u95f4\u3002"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcn/domob/android/ads/y$5;->a:Lcn/domob/android/ads/y;

    invoke-static {v0}, Lcn/domob/android/ads/y;->a(Lcn/domob/android/ads/y;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcn/domob/android/ads/y$5;->a:Lcn/domob/android/ads/y;

    invoke-static {v0}, Lcn/domob/android/ads/y;->a(Lcn/domob/android/ads/y;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 386
    :cond_0
    return-void
.end method
