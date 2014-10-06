.class public Lcom/adsmogo/model/obj/Extra;
.super Ljava/lang/Object;


# instance fields
.field public SDKversion:I

.field public adFirst:I

.field public bgAlpha:I

.field public bgBlue:I

.field public bgGreen:I

.field public bgRed:I

.field public closeAdOn:I

.field public cycleTime:I

.field public fgAlpha:I

.field public fgBlue:I

.field public fgGreen:I

.field public fgRed:I

.field public improveClick:I

.field public locationOn:I

.field public packageName:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;

.field public transition:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xff

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/adsmogo/model/obj/Extra;->fgRed:I

    iput v0, p0, Lcom/adsmogo/model/obj/Extra;->fgGreen:I

    iput v0, p0, Lcom/adsmogo/model/obj/Extra;->fgBlue:I

    iput v2, p0, Lcom/adsmogo/model/obj/Extra;->fgAlpha:I

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->bgRed:I

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->bgGreen:I

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->bgBlue:I

    iput v2, p0, Lcom/adsmogo/model/obj/Extra;->bgAlpha:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/adsmogo/model/obj/Extra;->cycleTime:I

    iput v2, p0, Lcom/adsmogo/model/obj/Extra;->locationOn:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/adsmogo/model/obj/Extra;->transition:I

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->improveClick:I

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->adFirst:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Extra;->timestamp:Ljava/lang/String;

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->version:I

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->SDKversion:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Extra;->packageName:Ljava/lang/String;

    return-void
.end method
