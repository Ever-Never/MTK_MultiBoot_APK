.class Lcn/domob/android/ads/E$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/E;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/content/SharedPreferences$Editor;

.field final synthetic c:Lcn/domob/android/ads/E;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/E;Landroid/app/Dialog;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcn/domob/android/ads/E$3;->c:Lcn/domob/android/ads/E;

    iput-object p2, p0, Lcn/domob/android/ads/E$3;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcn/domob/android/ads/E$3;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 371
    iget-object v0, p0, Lcn/domob/android/ads/E$3;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 373
    iget-object v0, p0, Lcn/domob/android/ads/E$3;->c:Lcn/domob/android/ads/E;

    invoke-static {v0}, Lcn/domob/android/ads/E;->a(Lcn/domob/android/ads/E;)Lcn/domob/android/ads/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcn/domob/android/ads/E$3;->c:Lcn/domob/android/ads/E;

    invoke-static {v0}, Lcn/domob/android/ads/E;->a(Lcn/domob/android/ads/E;)Lcn/domob/android/ads/i;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/E$3;->c:Lcn/domob/android/ads/E;

    invoke-static {v1}, Lcn/domob/android/ads/E;->b(Lcn/domob/android/ads/E;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/E$3;->c:Lcn/domob/android/ads/E;

    invoke-static {v2}, Lcn/domob/android/ads/E;->c(Lcn/domob/android/ads/E;)I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/E$3;->c:Lcn/domob/android/ads/E;

    invoke-static {v3}, Lcn/domob/android/ads/E;->d(Lcn/domob/android/ads/E;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/ads/i;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/E$3;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "skip_vc"

    iget-object v2, p0, Lcn/domob/android/ads/E$3;->c:Lcn/domob/android/ads/E;

    invoke-static {v2}, Lcn/domob/android/ads/E;->g(Lcn/domob/android/ads/E;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    iget-object v0, p0, Lcn/domob/android/ads/E$3;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 379
    return-void
.end method
