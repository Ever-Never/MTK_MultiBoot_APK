.class Lcn/domob/android/ads/G;
.super Landroid/widget/ViewFlipper;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 15
    :try_start_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {p0}, Lcn/domob/android/ads/G;->stopFlipping()V

    goto :goto_0
.end method
