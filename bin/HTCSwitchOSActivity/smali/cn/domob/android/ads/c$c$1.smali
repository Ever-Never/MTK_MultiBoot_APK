.class Lcn/domob/android/ads/c$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/c$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/c$c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/c$c;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcn/domob/android/ads/c$c$1;->a:Lcn/domob/android/ads/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcn/domob/android/ads/c$c$1;->a:Lcn/domob/android/ads/c$c;

    iget-object v0, v0, Lcn/domob/android/ads/c$c;->a:Lcn/domob/android/ads/c;

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->stopLoading()V

    .line 130
    return-void
.end method
