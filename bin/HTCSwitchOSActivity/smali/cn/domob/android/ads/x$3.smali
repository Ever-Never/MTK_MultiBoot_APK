.class Lcn/domob/android/ads/x$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/x;->n()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/x;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/x;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcn/domob/android/ads/x$3;->a:Lcn/domob/android/ads/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 600
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/x$3;->a:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->q(Lcn/domob/android/ads/x;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    invoke-static {}, Lcn/domob/android/ads/x;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/x$3;->a:Lcn/domob/android/ads/x;

    invoke-static {v2}, Lcn/domob/android/ads/x;->r(Lcn/domob/android/ads/x;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
