.class final Lcom/adsmogo/controller/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adsmogo/controller/AdsMogoNetWorkHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/adsmogo/controller/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2

    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/controller/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method
