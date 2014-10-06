.class Lcn/domob/android/ads/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/i;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcn/domob/android/ads/i$b;->a:Lcn/domob/android/ads/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcn/domob/android/ads/i$b;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->i()V

    .line 165
    return-void
.end method
