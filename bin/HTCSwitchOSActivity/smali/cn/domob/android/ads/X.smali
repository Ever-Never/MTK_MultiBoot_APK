.class Lcn/domob/android/ads/X;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/V;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/V;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcn/domob/android/ads/X;->a:Lcn/domob/android/ads/V;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 99
    return-void
.end method
