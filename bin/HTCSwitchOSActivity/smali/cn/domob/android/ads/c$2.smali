.class Lcn/domob/android/ads/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/android/ads/c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcn/domob/android/ads/c$2;->b:Lcn/domob/android/ads/c;

    iput-object p2, p0, Lcn/domob/android/ads/c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcn/domob/android/ads/c$2;->b:Lcn/domob/android/ads/c;

    iget-object v1, p0, Lcn/domob/android/ads/c$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->loadUrl(Ljava/lang/String;)V

    .line 181
    return-void
.end method
