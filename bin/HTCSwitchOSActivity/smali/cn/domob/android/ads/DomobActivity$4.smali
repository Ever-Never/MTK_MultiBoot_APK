.class Lcn/domob/android/ads/DomobActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/H;

.field final synthetic b:Lcn/domob/android/ads/DomobActivity;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobActivity;Lcn/domob/android/ads/H;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcn/domob/android/ads/DomobActivity$4;->b:Lcn/domob/android/ads/DomobActivity;

    iput-object p2, p0, Lcn/domob/android/ads/DomobActivity$4;->a:Lcn/domob/android/ads/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 176
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity$4;->a:Lcn/domob/android/ads/H;

    invoke-virtual {v0}, Lcn/domob/android/ads/H;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 177
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity$4;->b:Lcn/domob/android/ads/DomobActivity;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobActivity;->finish()V

    .line 178
    return-void
.end method
