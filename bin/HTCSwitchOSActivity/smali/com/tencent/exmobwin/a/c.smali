.class public Lcom/tencent/exmobwin/a/c;
.super Lcom/tencent/exmobwin/Type;


# static fields
.field public static final a:I = 0x0

.field public static b:Ljava/util/WeakHashMap; = null

.field public static final c:Ljava/lang/String; = ".jar"

.field public static final d:Ljava/lang/String; = "MobWIN"

.field public static final e:Ljava/lang/String; = "/Tencent/MobWIN_DATA/"

.field public static final f:Ljava/lang/String; = "lock"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    sget-object v0, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "common"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "banner"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "integralwall"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minibanner"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spot"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/exmobwin/Type;-><init>()V

    return-void
.end method
