.class Lcn/domob/android/ads/I$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/I;->a(Landroid/content/Context;Lcn/domob/android/ads/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/I;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/I;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcn/domob/android/ads/I$1;->a:Lcn/domob/android/ads/I;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/domob/android/ads/I$1;->a:Lcn/domob/android/ads/I;

    invoke-static {v0}, Lcn/domob/android/ads/I;->a(Lcn/domob/android/ads/I;)V

    .line 76
    return-void
.end method
