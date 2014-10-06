.class Lcn/domob/android/ads/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/r;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcn/domob/android/ads/r;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/r;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcn/domob/android/ads/r$1;->b:Lcn/domob/android/ads/r;

    iput-object p2, p0, Lcn/domob/android/ads/r$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 155
    iget-object v0, p0, Lcn/domob/android/ads/r$1;->b:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcn/domob/android/ads/r$1;->b:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->a(Lcn/domob/android/ads/r;)Lcn/domob/android/ads/r$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/r$1;->b:Lcn/domob/android/ads/r;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/r$a;->j(Lcn/domob/android/ads/r;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/r$1;->b:Lcn/domob/android/ads/r;

    invoke-static {v0}, Lcn/domob/android/ads/r;->b(Lcn/domob/android/ads/r;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/r$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method
