.class Lcn/domob/android/ads/y$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/y;->a(Landroid/view/View;Lcn/domob/android/ads/y$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/y;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/y;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcn/domob/android/ads/y$2;->a:Lcn/domob/android/ads/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 350
    iget-object v0, p0, Lcn/domob/android/ads/y$2;->a:Lcn/domob/android/ads/y;

    invoke-static {v0}, Lcn/domob/android/ads/y;->a(Lcn/domob/android/ads/y;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcn/domob/android/ads/y$2;->a:Lcn/domob/android/ads/y;

    invoke-static {v0}, Lcn/domob/android/ads/y;->a(Lcn/domob/android/ads/y;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 353
    :cond_0
    return-void
.end method
