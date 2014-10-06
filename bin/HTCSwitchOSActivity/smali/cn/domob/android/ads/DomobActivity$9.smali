.class Lcn/domob/android/ads/DomobActivity$9;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/DomobActivity;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcn/domob/android/ads/DomobActivity$9;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 290
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity$9;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-static {v0}, Lcn/domob/android/ads/DomobActivity;->b(Lcn/domob/android/ads/DomobActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobActivity$9;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-static {v1}, Lcn/domob/android/ads/DomobActivity;->g(Lcn/domob/android/ads/DomobActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/domob/android/ads/DomobActivity$9;->a:Lcn/domob/android/ads/DomobActivity;

    iget-object v3, p0, Lcn/domob/android/ads/DomobActivity$9;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-static {v3}, Lcn/domob/android/ads/DomobActivity;->g(Lcn/domob/android/ads/DomobActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/domob/android/ads/DomobActivity;->a(Lcn/domob/android/ads/DomobActivity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 294
    invoke-static {}, Lcn/domob/android/ads/DomobActivity;->c()Lcn/domob/android/ads/J;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected pic size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 295
    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/o;->a(Landroid/graphics/Bitmap;J)Z

    move-result v0

    .line 296
    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity$9;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-static {v0}, Lcn/domob/android/ads/DomobActivity;->f(Lcn/domob/android/ads/DomobActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity$9;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-static {v0}, Lcn/domob/android/ads/DomobActivity;->f(Lcn/domob/android/ads/DomobActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    invoke-static {}, Lcn/domob/android/ads/DomobActivity;->c()Lcn/domob/android/ads/J;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
