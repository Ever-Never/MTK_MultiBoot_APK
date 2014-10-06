.class Lcn/domob/android/ads/q$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field protected a:Landroid/location/LocationManager;

.field final synthetic b:Lcn/domob/android/ads/q$a;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/q$a;Landroid/location/LocationManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcn/domob/android/ads/q$a$b;->b:Lcn/domob/android/ads/q$a;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-object p2, p0, Lcn/domob/android/ads/q$a$b;->a:Landroid/location/LocationManager;

    .line 704
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 708
    invoke-static {}, Lcn/domob/android/ads/q;->f()Lcn/domob/android/ads/J;

    move-result-object v0

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onLocationChanged"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcn/domob/android/ads/q$a$b;->b:Lcn/domob/android/ads/q$a;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcn/domob/android/ads/q$a;->a(Lcn/domob/android/ads/q$a;Landroid/location/Location;I)V

    .line 710
    iget-object v0, p0, Lcn/domob/android/ads/q$a$b;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 711
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 715
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 719
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "s"
    .parameter "i"
    .parameter "bundle"

    .prologue
    .line 723
    return-void
.end method
