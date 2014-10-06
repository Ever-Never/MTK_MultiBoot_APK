.class Lcom/tencent/exmobwin/b/f;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Lcom/tencent/exmobwin/b/b;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/tencent/exmobwin/b/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/b/f;->a:Lcom/tencent/exmobwin/b/b;

    iput p2, p0, Lcom/tencent/exmobwin/b/f;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/exmobwin/b/f;->a:Lcom/tencent/exmobwin/b/b;

    iget v1, p0, Lcom/tencent/exmobwin/b/f;->b:I

    invoke-virtual {v0, v1}, Lcom/tencent/exmobwin/b/b;->a(I)V

    return-void
.end method
