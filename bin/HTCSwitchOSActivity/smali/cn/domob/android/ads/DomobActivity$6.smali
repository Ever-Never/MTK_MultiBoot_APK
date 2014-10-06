.class Lcn/domob/android/ads/DomobActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobActivity;->g()V
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
    .line 219
    iput-object p1, p0, Lcn/domob/android/ads/DomobActivity$6;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 221
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity$6;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-static {v0}, Lcn/domob/android/ads/DomobActivity;->d(Lcn/domob/android/ads/DomobActivity;)Z

    .line 222
    return-void
.end method
