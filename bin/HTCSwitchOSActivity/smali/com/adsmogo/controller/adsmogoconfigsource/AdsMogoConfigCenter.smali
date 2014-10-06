.class public Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Hashtable;


# instance fields
.field public adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->i:Z

    new-instance v0, Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-direct {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    return-void
.end method


# virtual methods
.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->d:I

    return v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitudeAndlongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPngSize()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->b:I

    return v0
.end method

.method public isExpressMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->g:Z

    return v0
.end method

.method public isSendDataed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->i:Z

    return v0
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->d:I

    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->c:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->e:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->f:Ljava/lang/String;

    return-void
.end method

.method public setExpressMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->g:Z

    return-void
.end method

.method public setLatitudeAndlongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->h:Ljava/lang/String;

    return-void
.end method

.method public setPngSize(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->b:I

    return-void
.end method

.method public setSendDataed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->i:Z

    return-void
.end method
