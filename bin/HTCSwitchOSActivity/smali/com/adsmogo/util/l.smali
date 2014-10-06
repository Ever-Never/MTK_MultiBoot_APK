.class final Lcom/adsmogo/util/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/adsmogo/util/n;

.field private final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/adsmogo/util/k;Lcom/adsmogo/util/n;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p2, p0, Lcom/adsmogo/util/l;->a:Lcom/adsmogo/util/n;

    iput-object p3, p0, Lcom/adsmogo/util/l;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/util/l;->a:Lcom/adsmogo/util/n;

    iget-object v1, p0, Lcom/adsmogo/util/l;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/adsmogo/util/n;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
