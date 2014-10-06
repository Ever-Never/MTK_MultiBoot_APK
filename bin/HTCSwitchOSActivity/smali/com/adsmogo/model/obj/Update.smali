.class public Lcom/adsmogo/model/obj/Update;
.super Ljava/lang/Object;


# instance fields
.field public appName:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public download_url:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsmogo/model/obj/Update;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Update;->packageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Update;->appName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Update;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Update;->date:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Update;->description:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Update;->download_url:Ljava/lang/String;

    return-void
.end method
