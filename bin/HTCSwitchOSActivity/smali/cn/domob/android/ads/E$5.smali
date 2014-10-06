.class final Lcn/domob/android/ads/E$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/E;->c(Landroid/content/Context;)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic b:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcn/domob/android/ads/E$5;->a:Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p0, Lcn/domob/android/ads/E$5;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 484
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lcn/domob/android/ads/E$5;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    check-cast p1, Landroid/widget/Button;

    .end local p1
    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 491
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 487
    .restart local p1
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 488
    iget-object v0, p0, Lcn/domob/android/ads/E$5;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    check-cast p1, Landroid/widget/Button;

    .end local p1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
