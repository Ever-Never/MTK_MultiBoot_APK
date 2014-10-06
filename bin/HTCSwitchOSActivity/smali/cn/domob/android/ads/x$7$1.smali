.class Lcn/domob/android/ads/x$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/x$7;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/x$7;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/x$7;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcn/domob/android/ads/x$7$1;->a:Lcn/domob/android/ads/x$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 277
    invoke-static {}, Lcn/domob/android/ads/x;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/x$7$1;->a:Lcn/domob/android/ads/x$7;

    iget-object v1, v1, Lcn/domob/android/ads/x$7;->a:Lcn/domob/android/ads/x;

    const-string v2, "Video dialog dismissed."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcn/domob/android/ads/x$7$1;->a:Lcn/domob/android/ads/x$7;

    iget-object v0, v0, Lcn/domob/android/ads/x$7;->a:Lcn/domob/android/ads/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/x;Z)Z

    .line 279
    iget-object v0, p0, Lcn/domob/android/ads/x$7$1;->a:Lcn/domob/android/ads/x$7;

    iget-object v0, v0, Lcn/domob/android/ads/x$7;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->g(Lcn/domob/android/ads/x;)V

    .line 281
    iget-object v0, p0, Lcn/domob/android/ads/x$7$1;->a:Lcn/domob/android/ads/x$7;

    iget-object v0, v0, Lcn/domob/android/ads/x$7;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->h(Lcn/domob/android/ads/x;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcn/domob/android/ads/x$7$1;->a:Lcn/domob/android/ads/x$7;

    iget-object v0, v0, Lcn/domob/android/ads/x$7;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->i(Lcn/domob/android/ads/x;)V

    .line 283
    :cond_0
    return-void
.end method
