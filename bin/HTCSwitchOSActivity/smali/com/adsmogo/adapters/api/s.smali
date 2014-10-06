.class final Lcom/adsmogo/adapters/api/s;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

.field private final synthetic b:I

.field private final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/s;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    iput p2, p0, Lcom/adsmogo/adapters/api/s;->b:I

    iput-object p3, p0, Lcom/adsmogo/adapters/api/s;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/adsmogo/adapters/api/s;->b:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/s;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/adapters/api/s;->a:Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/s;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
