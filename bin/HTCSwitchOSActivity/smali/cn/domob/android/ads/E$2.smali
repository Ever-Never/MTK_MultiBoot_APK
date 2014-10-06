.class Lcn/domob/android/ads/E$2;
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

.field final synthetic b:Lcn/domob/android/ads/E;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/E;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcn/domob/android/ads/E$2;->b:Lcn/domob/android/ads/E;

    iput-object p2, p0, Lcn/domob/android/ads/E$2;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 357
    iget-object v0, p0, Lcn/domob/android/ads/E$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 359
    iget-object v0, p0, Lcn/domob/android/ads/E$2;->b:Lcn/domob/android/ads/E;

    invoke-static {v0}, Lcn/domob/android/ads/E;->a(Lcn/domob/android/ads/E;)Lcn/domob/android/ads/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcn/domob/android/ads/E$2;->b:Lcn/domob/android/ads/E;

    invoke-static {v0}, Lcn/domob/android/ads/E;->a(Lcn/domob/android/ads/E;)Lcn/domob/android/ads/i;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/E$2;->b:Lcn/domob/android/ads/E;

    invoke-static {v1}, Lcn/domob/android/ads/E;->b(Lcn/domob/android/ads/E;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/E$2;->b:Lcn/domob/android/ads/E;

    invoke-static {v2}, Lcn/domob/android/ads/E;->c(Lcn/domob/android/ads/E;)I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/E$2;->b:Lcn/domob/android/ads/E;

    invoke-static {v3}, Lcn/domob/android/ads/E;->d(Lcn/domob/android/ads/E;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/ads/i;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 362
    :cond_0
    return-void
.end method
