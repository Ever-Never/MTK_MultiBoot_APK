.class final Lcom/adsmogo/adview/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoLayout;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/AdsMogoLayout;->setEnabled(Z)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/AdsMogoLayout;->setEnabled(Z)V

    return-void
.end method
