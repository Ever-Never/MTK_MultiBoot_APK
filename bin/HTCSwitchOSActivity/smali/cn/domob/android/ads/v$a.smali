.class Lcn/domob/android/ads/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/v;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/v;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcn/domob/android/ads/v$a;->a:Lcn/domob/android/ads/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method
