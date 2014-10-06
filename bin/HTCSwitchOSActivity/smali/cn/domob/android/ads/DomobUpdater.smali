.class public Lcn/domob/android/ads/DomobUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "publisherID"

    .prologue
    .line 18
    new-instance v0, Lcn/domob/android/ads/E;

    new-instance v1, Lcn/domob/android/ads/i;

    invoke-direct {v1, p1}, Lcn/domob/android/ads/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcn/domob/android/ads/E;-><init>(Landroid/content/Context;Lcn/domob/android/ads/i;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/E;->a()V

    .line 19
    return-void
.end method
