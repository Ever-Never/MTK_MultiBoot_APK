.class Lcn/domob/android/ads/x$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/x;->i()V
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
    .line 499
    iput-object p1, p0, Lcn/domob/android/ads/x$11;->a:Lcn/domob/android/ads/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcn/domob/android/ads/x$11;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->l(Lcn/domob/android/ads/x;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 503
    return-void
.end method
