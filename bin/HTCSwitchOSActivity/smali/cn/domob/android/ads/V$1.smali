.class Lcn/domob/android/ads/V$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/V;->a(Landroid/view/View;II)Landroid/view/ViewGroup;
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
    .line 336
    iput-object p1, p0, Lcn/domob/android/ads/V$1;->a:Lcn/domob/android/ads/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method
