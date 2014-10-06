.class final Lcom/adsmogo/util/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/adsmogo/util/r;

.field private final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/adsmogo/util/p;Lcom/adsmogo/util/r;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p2, p0, Lcom/adsmogo/util/q;->a:Lcom/adsmogo/util/r;

    iput-object p3, p0, Lcom/adsmogo/util/q;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/util/q;->a:Lcom/adsmogo/util/r;

    iget-object v1, p0, Lcom/adsmogo/util/q;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/adsmogo/util/r;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
