.class public Lcom/adsmogo/util/AdsMogoTargeting;
.super Ljava/lang/Object;


# static fields
.field public static final APad_BIG_BANNER_AD:I = 0x2

.field public static final APad_RECTANGLE_AD:I = 0x4

.field public static final APad_SKYSCRAPER_AD:I = 0x5

.field public static final APad_SMALL_BANNER_AD:I = 0x3

.field public static final FULLSCREEN_AD:I = 0x6

.field public static final GETINFO_FULLSCREEN_AD:I = 0x80

.field public static final GETINFO_PHONE_BANNER_AD:I = 0x2

.field public static final PHONE_BANNER_AD:I = 0x1

.field public static final VIDEO_AD:I = 0x7

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/adsmogo/util/Gender;

.field public static countryCode:Ljava/lang/String;

.field private static d:Ljava/util/GregorianCalendar;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/util/Set;

.field private static i:Ljava/lang/String;

.field private static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->countryCode:Ljava/lang/String;

    invoke-static {}, Lcom/adsmogo/util/AdsMogoTargeting;->resetData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKeyword(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->h:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->h:Ljava/util/Set;

    :cond_0
    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->h:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getAdchinaDefaultImage()I
    .locals 1

    sget v0, Lcom/adsmogo/util/AdsMogoTargeting;->j:I

    return v0
.end method

.method public static getAge()I
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->d:Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/adsmogo/util/AdsMogoTargeting;->d:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getBirthDate()Ljava/util/GregorianCalendar;
    .locals 1

    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->d:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method public static getBirthday()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getCompanyName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getGender()Lcom/adsmogo/util/Gender;
    .locals 1

    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->c:Lcom/adsmogo/util/Gender;

    return-object v0
.end method

.method public static getKeywordSet()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->h:Ljava/util/Set;

    return-object v0
.end method

.method public static getKeywords()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getPostalCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getTelephoneNumber()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static resetData()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/adsmogo/util/AdsMogoTargeting;->a:Ljava/lang/String;

    sput-object v1, Lcom/adsmogo/util/AdsMogoTargeting;->b:Ljava/lang/String;

    sget-object v0, Lcom/adsmogo/util/Gender;->UNKNOWN:Lcom/adsmogo/util/Gender;

    sput-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->c:Lcom/adsmogo/util/Gender;

    sput-object v1, Lcom/adsmogo/util/AdsMogoTargeting;->d:Ljava/util/GregorianCalendar;

    sput-object v1, Lcom/adsmogo/util/AdsMogoTargeting;->e:Ljava/lang/String;

    sput-object v1, Lcom/adsmogo/util/AdsMogoTargeting;->f:Ljava/lang/String;

    sput-object v1, Lcom/adsmogo/util/AdsMogoTargeting;->g:Ljava/lang/String;

    sput-object v1, Lcom/adsmogo/util/AdsMogoTargeting;->h:Ljava/util/Set;

    sput-object v1, Lcom/adsmogo/util/AdsMogoTargeting;->i:Ljava/lang/String;

    return-void
.end method

.method public static setAdchinaDefaultImage(I)V
    .locals 0

    sput p0, Lcom/adsmogo/util/AdsMogoTargeting;->j:I

    return-void
.end method

.method public static setAge(I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/adsmogo/util/AdsMogoTargeting;->d:Ljava/util/GregorianCalendar;

    return-void
.end method

.method public static setAppName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/adsmogo/util/AdsMogoTargeting;->a:Ljava/lang/String;

    return-void
.end method

.method public static setBirthDate(Ljava/util/GregorianCalendar;)V
    .locals 0

    sput-object p0, Lcom/adsmogo/util/AdsMogoTargeting;->d:Ljava/util/GregorianCalendar;

    return-void
.end method

.method public static setBirthday(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x6

    const/4 v1, 0x4

    sput-object p0, Lcom/adsmogo/util/AdsMogoTargeting;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {v3, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v2}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-static {v3}, Lcom/adsmogo/util/AdsMogoTargeting;->setBirthDate(Ljava/util/GregorianCalendar;)V

    return-void
.end method

.method public static setCompanyName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/adsmogo/util/AdsMogoTargeting;->b:Ljava/lang/String;

    return-void
.end method

.method public static setGender(Lcom/adsmogo/util/Gender;)V
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/adsmogo/util/Gender;->UNKNOWN:Lcom/adsmogo/util/Gender;

    :cond_0
    sput-object p0, Lcom/adsmogo/util/AdsMogoTargeting;->c:Lcom/adsmogo/util/Gender;

    return-void
.end method

.method public static setKeywordSet(Ljava/util/Set;)V
    .locals 0

    sput-object p0, Lcom/adsmogo/util/AdsMogoTargeting;->h:Ljava/util/Set;

    return-void
.end method

.method public static setKeywords(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/adsmogo/util/AdsMogoTargeting;->g:Ljava/lang/String;

    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/adsmogo/util/AdsMogoTargeting;->f:Ljava/lang/String;

    return-void
.end method

.method public static setTelephoneNumber(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/adsmogo/util/AdsMogoTargeting;->i:Ljava/lang/String;

    return-void
.end method

.method public static setTestMode(Z)V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Please set testMode in Website"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
