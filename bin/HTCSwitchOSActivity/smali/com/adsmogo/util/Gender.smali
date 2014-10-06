.class public final enum Lcom/adsmogo/util/Gender;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/adsmogo/util/Gender;

.field public static final enum FEMALE:Lcom/adsmogo/util/Gender;

.field public static final enum MALE:Lcom/adsmogo/util/Gender;

.field public static final enum UNKNOWN:Lcom/adsmogo/util/Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adsmogo/util/Gender;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/adsmogo/util/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsmogo/util/Gender;->UNKNOWN:Lcom/adsmogo/util/Gender;

    new-instance v0, Lcom/adsmogo/util/Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3}, Lcom/adsmogo/util/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsmogo/util/Gender;->MALE:Lcom/adsmogo/util/Gender;

    new-instance v0, Lcom/adsmogo/util/Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4}, Lcom/adsmogo/util/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsmogo/util/Gender;->FEMALE:Lcom/adsmogo/util/Gender;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adsmogo/util/Gender;

    sget-object v1, Lcom/adsmogo/util/Gender;->UNKNOWN:Lcom/adsmogo/util/Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adsmogo/util/Gender;->MALE:Lcom/adsmogo/util/Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adsmogo/util/Gender;->FEMALE:Lcom/adsmogo/util/Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adsmogo/util/Gender;->ENUM$VALUES:[Lcom/adsmogo/util/Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
