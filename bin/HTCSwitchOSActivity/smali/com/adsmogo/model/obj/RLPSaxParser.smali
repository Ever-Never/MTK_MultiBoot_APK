.class public Lcom/adsmogo/model/obj/RLPSaxParser;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private a:Lcom/adsmogo/model/obj/RLPAD;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    iput-object v0, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    if-eqz v1, :cond_0

    const-string v1, "param"

    iget-object v2, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/RLPAD;->setGuid(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "flightId"

    iget-object v2, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/RLPAD;->setFlightId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "adId"

    iget-object v2, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/RLPAD;->setAdId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "creativeUrl"

    iget-object v2, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/RLPAD;->setCreativeUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "eventName"

    iget-object v2, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/RLPAD;->setEventName(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "interactionUrl"

    iget-object v2, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/RLPAD;->setInteractionUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "adText"

    iget-object v2, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/RLPAD;->setAdText(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v1, "adDescription"

    iget-object v2, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/RLPAD;->setAdDescription(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    return-void
.end method

.method public getAD(Ljava/io/InputStream;)Lcom/adsmogo/model/obj/RLPAD;
    .locals 2

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    new-instance v1, Lcom/adsmogo/model/obj/RLPSaxParser;

    invoke-direct {v1}, Lcom/adsmogo/model/obj/RLPSaxParser;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/RLPSaxParser;->getAd()Lcom/adsmogo/model/obj/RLPAD;

    move-result-object v0

    return-object v0
.end method

.method public getAd()Lcom/adsmogo/model/obj/RLPAD;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    return-object v0
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "param"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "guid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adsmogo/model/obj/RLPAD;

    invoke-direct {v0}, Lcom/adsmogo/model/obj/RLPAD;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->a:Lcom/adsmogo/model/obj/RLPAD;

    :cond_0
    iput-object p3, p0, Lcom/adsmogo/model/obj/RLPSaxParser;->b:Ljava/lang/String;

    return-void
.end method
