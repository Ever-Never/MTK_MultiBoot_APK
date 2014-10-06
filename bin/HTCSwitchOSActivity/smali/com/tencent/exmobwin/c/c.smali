.class public Lcom/tencent/exmobwin/c/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:J

.field private o:J

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/exmobwin/c/c;->e:I

    iput v1, p0, Lcom/tencent/exmobwin/c/c;->f:I

    iput v1, p0, Lcom/tencent/exmobwin/c/c;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->k:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/exmobwin/c/c;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->m:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/exmobwin/c/c;->n:J

    iput-wide v2, p0, Lcom/tencent/exmobwin/c/c;->o:J

    iput v1, p0, Lcom/tencent/exmobwin/c/c;->p:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/exmobwin/c/c;->e:I

    iput v1, p0, Lcom/tencent/exmobwin/c/c;->f:I

    iput v1, p0, Lcom/tencent/exmobwin/c/c;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->k:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/exmobwin/c/c;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/c/c;->m:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/exmobwin/c/c;->n:J

    iput-wide v2, p0, Lcom/tencent/exmobwin/c/c;->o:J

    iput v1, p0, Lcom/tencent/exmobwin/c/c;->p:I

    invoke-virtual {p0, p1}, Lcom/tencent/exmobwin/c/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/tencent/exmobwin/c/c;->c(I)V

    invoke-virtual {p0, p3}, Lcom/tencent/exmobwin/c/c;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/exmobwin/c/c;->f:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/exmobwin/c/c;->f:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/exmobwin/c/c;->n:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/c/c;->d:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/exmobwin/c/c;->g:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/exmobwin/c/c;->g:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/exmobwin/c/c;->o:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/c/c;->i:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/c/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/exmobwin/c/c;->e:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/c/c;->h:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/exmobwin/c/c;->e:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/exmobwin/c/c;->l:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/c/c;->j:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/c/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/exmobwin/c/c;->p:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/c/c;->k:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/exmobwin/c/c;->l:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/c/c;->m:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/c/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/c/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/c/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/c/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/exmobwin/c/c;->n:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/exmobwin/c/c;->o:J

    return-wide v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/tencent/exmobwin/c/c;->p:I

    return v0
.end method
