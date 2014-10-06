.class final enum Lcn/domob/android/ads/i$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/ads/i$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/android/ads/i$c;

.field public static final enum b:Lcn/domob/android/ads/i$c;

.field public static final enum c:Lcn/domob/android/ads/i$c;

.field private static final synthetic d:[Lcn/domob/android/ads/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcn/domob/android/ads/i$c;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/i$c;->a:Lcn/domob/android/ads/i$c;

    new-instance v0, Lcn/domob/android/ads/i$c;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v3}, Lcn/domob/android/ads/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/i$c;->b:Lcn/domob/android/ads/i$c;

    new-instance v0, Lcn/domob/android/ads/i$c;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcn/domob/android/ads/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/i$c;->c:Lcn/domob/android/ads/i$c;

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/domob/android/ads/i$c;

    sget-object v1, Lcn/domob/android/ads/i$c;->a:Lcn/domob/android/ads/i$c;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/android/ads/i$c;->b:Lcn/domob/android/ads/i$c;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/android/ads/i$c;->c:Lcn/domob/android/ads/i$c;

    aput-object v1, v0, v4

    sput-object v0, Lcn/domob/android/ads/i$c;->d:[Lcn/domob/android/ads/i$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/ads/i$c;
    .locals 1
    .parameter "name"

    .prologue
    .line 105
    const-class v0, Lcn/domob/android/ads/i$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/i$c;

    return-object v0
.end method

.method public static values()[Lcn/domob/android/ads/i$c;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcn/domob/android/ads/i$c;->d:[Lcn/domob/android/ads/i$c;

    invoke-virtual {v0}, [Lcn/domob/android/ads/i$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/android/ads/i$c;

    return-object v0
.end method
