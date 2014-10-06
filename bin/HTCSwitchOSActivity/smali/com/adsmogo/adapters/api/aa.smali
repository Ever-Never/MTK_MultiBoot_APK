.class final Lcom/adsmogo/adapters/api/aa;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;I)V
    .locals 3

    const/16 v2, 0x2d8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "320"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/aa;->a:Ljava/lang/String;

    const-string v0, "48"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/aa;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/adsmogo/adapters/api/aa;->c:I

    const/16 v0, 0x140

    iput v0, p0, Lcom/adsmogo/adapters/api/aa;->c:I

    iget v0, p0, Lcom/adsmogo/adapters/api/aa;->c:I

    const/16 v1, 0x1d4

    if-ge v0, v1, :cond_1

    const-string v0, "320"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/aa;->a:Ljava/lang/String;

    const-string v0, "48"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/aa;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/adsmogo/adapters/api/aa;->c:I

    if-ge v0, v2, :cond_2

    const-string v0, "468"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/aa;->a:Ljava/lang/String;

    const-string v0, "60"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/aa;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/adsmogo/adapters/api/aa;->c:I

    if-lt v0, v2, :cond_0

    const-string v0, "728"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/aa;->a:Ljava/lang/String;

    const-string v0, "90"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/aa;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/aa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/aa;->b:Ljava/lang/String;

    return-object v0
.end method
