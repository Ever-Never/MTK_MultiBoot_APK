.class Lcn/domob/android/ads/i$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i;->g(Lcn/domob/android/ads/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/i;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;)V
    .locals 0
    .parameter

    .prologue
    .line 1514
    iput-object p1, p0, Lcn/domob/android/ads/i$8;->a:Lcn/domob/android/ads/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1517
    iget-object v0, p0, Lcn/domob/android/ads/i$8;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    const-string v1, "\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1518
    return-void
.end method
