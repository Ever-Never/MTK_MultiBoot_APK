.class final Lcom/adsmogo/adview/H;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/util/r;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/ShowInfoDialog;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/ShowInfoDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/H;->a:Lcom/adsmogo/adview/ShowInfoDialog;

    iput p2, p0, Lcom/adsmogo/adview/H;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adview/H;->a:Lcom/adsmogo/adview/ShowInfoDialog;

    iget v1, p0, Lcom/adsmogo/adview/H;->b:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/ShowInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
