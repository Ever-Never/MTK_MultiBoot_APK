.class public final enum Lcn/domob/android/ads/af$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/ads/af$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/android/ads/af$a;

.field public static final enum b:Lcn/domob/android/ads/af$a;

.field public static final enum c:Lcn/domob/android/ads/af$a;

.field public static final enum d:Lcn/domob/android/ads/af$a;

.field public static final enum e:Lcn/domob/android/ads/af$a;

.field private static final synthetic f:[Lcn/domob/android/ads/af$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcn/domob/android/ads/af$a;

    const-string v1, "PUSH_UP"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/af$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/af$a;->a:Lcn/domob/android/ads/af$a;

    new-instance v0, Lcn/domob/android/ads/af$a;

    const-string v1, "PUSH_DOWN"

    invoke-direct {v0, v1, v3}, Lcn/domob/android/ads/af$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/af$a;->b:Lcn/domob/android/ads/af$a;

    new-instance v0, Lcn/domob/android/ads/af$a;

    const-string v1, "SLIDE_FROM_LEFT_TO_RIGHT"

    invoke-direct {v0, v1, v4}, Lcn/domob/android/ads/af$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/af$a;->c:Lcn/domob/android/ads/af$a;

    new-instance v0, Lcn/domob/android/ads/af$a;

    const-string v1, "SLIDE_FROM_RIGHT_TO_LEFT"

    invoke-direct {v0, v1, v5}, Lcn/domob/android/ads/af$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/af$a;->d:Lcn/domob/android/ads/af$a;

    new-instance v0, Lcn/domob/android/ads/af$a;

    const-string v1, "ALPHA_IN_AND_OUT"

    invoke-direct {v0, v1, v6}, Lcn/domob/android/ads/af$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/af$a;->e:Lcn/domob/android/ads/af$a;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcn/domob/android/ads/af$a;

    sget-object v1, Lcn/domob/android/ads/af$a;->a:Lcn/domob/android/ads/af$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/android/ads/af$a;->b:Lcn/domob/android/ads/af$a;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/android/ads/af$a;->c:Lcn/domob/android/ads/af$a;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/android/ads/af$a;->d:Lcn/domob/android/ads/af$a;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/android/ads/af$a;->e:Lcn/domob/android/ads/af$a;

    aput-object v1, v0, v6

    sput-object v0, Lcn/domob/android/ads/af$a;->f:[Lcn/domob/android/ads/af$a;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/ads/af$a;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcn/domob/android/ads/af$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/af$a;

    return-object v0
.end method

.method public static values()[Lcn/domob/android/ads/af$a;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcn/domob/android/ads/af$a;->f:[Lcn/domob/android/ads/af$a;

    invoke-virtual {v0}, [Lcn/domob/android/ads/af$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/android/ads/af$a;

    return-object v0
.end method
