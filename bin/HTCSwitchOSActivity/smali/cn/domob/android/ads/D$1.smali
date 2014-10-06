.class Lcn/domob/android/ads/D$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/D;->a(Lcn/domob/android/ads/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/p;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/domob/android/ads/D;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/D;Lcn/domob/android/ads/p;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcn/domob/android/ads/D$1;->c:Lcn/domob/android/ads/D;

    iput-object p2, p0, Lcn/domob/android/ads/D$1;->a:Lcn/domob/android/ads/p;

    iput-object p3, p0, Lcn/domob/android/ads/D$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 101
    iget-object v0, p0, Lcn/domob/android/ads/D$1;->a:Lcn/domob/android/ads/p;

    invoke-virtual {v0}, Lcn/domob/android/ads/p;->d()[B

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcn/domob/android/ads/D$1;->c:Lcn/domob/android/ads/D;

    iget-object v2, p0, Lcn/domob/android/ads/D$1;->a:Lcn/domob/android/ads/p;

    invoke-virtual {v2}, Lcn/domob/android/ads/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcn/domob/android/ads/D;->a(Lcn/domob/android/ads/D;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    invoke-static {}, Lcn/domob/android/ads/D;->c()Lcn/domob/android/ads/J;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image saved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 107
    :try_start_0
    new-instance v0, Lcn/domob/android/ads/g;

    invoke-direct {v0}, Lcn/domob/android/ads/g;-><init>()V

    .line 108
    iget-object v2, p0, Lcn/domob/android/ads/D$1;->c:Lcn/domob/android/ads/D;

    invoke-virtual {v2}, Lcn/domob/android/ads/D;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/D$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcn/domob/android/ads/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/D$1;->c:Lcn/domob/android/ads/D;

    const-string v2, "%s.assetReady(\'%s\', \'%s\')"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "domobBridge"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/domob/android/ads/D$1;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/D;->a(Ljava/lang/String;)V

    .line 117
    :goto_1
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {}, Lcn/domob/android/ads/D;->c()Lcn/domob/android/ads/J;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/D;->c()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Error in saving image."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
