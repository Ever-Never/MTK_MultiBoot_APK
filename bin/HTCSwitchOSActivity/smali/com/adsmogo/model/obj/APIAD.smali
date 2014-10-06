.class public Lcom/adsmogo/model/obj/APIAD;
.super Ljava/lang/Object;


# instance fields
.field public adImg:Ljava/lang/String;

.field public adText:Ljava/lang/String;

.field public adType:I

.field public apk:Ljava/lang/String;

.field public linkType:I

.field public linkUrl:Ljava/lang/String;

.field public sid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/APIAD;->sid:Ljava/lang/String;

    iput v1, p0, Lcom/adsmogo/model/obj/APIAD;->adType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/APIAD;->adText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/APIAD;->adImg:Ljava/lang/String;

    iput v1, p0, Lcom/adsmogo/model/obj/APIAD;->linkType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/APIAD;->apk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/APIAD;->adImg:Ljava/lang/String;

    return-object v0
.end method

.method public getAdText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/APIAD;->adText:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/APIAD;->adType:I

    return v0
.end method

.method public getApk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/APIAD;->apk:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/APIAD;->linkType:I

    return v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/APIAD;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public setAdImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/APIAD;->adImg:Ljava/lang/String;

    return-void
.end method

.method public setAdText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/APIAD;->adText:Ljava/lang/String;

    return-void
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/APIAD;->adType:I

    return-void
.end method

.method public setApk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/APIAD;->apk:Ljava/lang/String;

    return-void
.end method

.method public setLinkType(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/APIAD;->linkType:I

    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/APIAD;->sid:Ljava/lang/String;

    return-void
.end method
