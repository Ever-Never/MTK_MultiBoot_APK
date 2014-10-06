.class Lcn/domob/android/ads/x$7$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/x$7;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcn/domob/android/ads/x$7;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/x$7;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcn/domob/android/ads/x$7$3;->b:Lcn/domob/android/ads/x$7;

    iput-object p2, p0, Lcn/domob/android/ads/x$7$3;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 303
    iget-object v0, p0, Lcn/domob/android/ads/x$7$3;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 304
    return-void
.end method
