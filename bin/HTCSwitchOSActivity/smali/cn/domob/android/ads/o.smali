.class Lcn/domob/android/ads/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "http://192.168.1.201:12345/ad_monitor/uploadReceiver.php?os=android&platform=domob"

.field private static b:Lcn/domob/android/ads/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/o;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/o;->b:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/graphics/Bitmap;J)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 28
    const-string v7, "--"

    .line 29
    const-string v8, "\r\n"

    .line 30
    const-string v3, "multipart/form-data"

    .line 31
    const-string v9, "UTF-8"

    .line 35
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v10, "http://192.168.1.201:12345/ad_monitor/uploadReceiver.php?os=android&platform=domob"

    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    .line 37
    const/16 v10, 0x1388

    :try_start_1
    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 38
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 39
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 40
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 41
    const-string v10, "POST"

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 42
    const-string v10, "connection"

    const-string v11, "keep-alive"

    invoke-virtual {v0, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v10, "Charsert"

    const-string v11, "UTF-8"

    invoke-virtual {v0, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ";boundary="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_7

    .line 48
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Type: application/octet-stream; charset="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 57
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    const v4, 0x48927c00

    long-to-float v10, p1

    div-float/2addr v4, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v4, v10

    float-to-int v4, v4

    .line 61
    if-le v4, v5, :cond_0

    move v4, v5

    .line 64
    :cond_0
    sget-object v5, Lcn/domob/android/ads/o;->b:Lcn/domob/android/ads/J;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "upload compressRate is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 65
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, v4, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 66
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 68
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 70
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 71
    const/4 v10, 0x0

    invoke-virtual {v3, v5, v10, v9}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v3

    .line 91
    :goto_1
    :try_start_3
    sget-object v3, Lcn/domob/android/ads/o;->b:Lcn/domob/android/ads/J;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 98
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 102
    :goto_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v2

    :goto_3
    return v0

    .line 74
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 75
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 80
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 83
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_8

    move-result v4

    .line 84
    const/16 v5, 0xc8

    if-lt v4, v5, :cond_2

    const/16 v5, 0x12c

    if-gt v4, v5, :cond_2

    .line 98
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 102
    :goto_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_3

    .line 99
    :catch_1
    move-exception v2

    .line 100
    sget-object v3, Lcn/domob/android/ads/o;->b:Lcn/domob/android/ads/J;

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 98
    :cond_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 102
    :goto_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v2

    goto :goto_3

    .line 99
    :catch_2
    move-exception v1

    .line 100
    sget-object v3, Lcn/domob/android/ads/o;->b:Lcn/domob/android/ads/J;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 99
    :catch_3
    move-exception v0

    .line 100
    sget-object v1, Lcn/domob/android/ads/o;->b:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 93
    :catch_4
    move-exception v0

    move-object v3, v4

    .line 94
    :goto_6
    :try_start_8
    sget-object v1, Lcn/domob/android/ads/o;->b:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 98
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 102
    :goto_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v2

    goto :goto_3

    .line 99
    :catch_5
    move-exception v0

    .line 100
    sget-object v1, Lcn/domob/android/ads/o;->b:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 97
    :catchall_0
    move-exception v0

    move-object v3, v4

    .line 98
    :goto_8
    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 102
    :goto_9
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 99
    :catch_6
    move-exception v1

    .line 100
    sget-object v2, Lcn/domob/android/ads/o;->b:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 97
    :catchall_1
    move-exception v1

    move-object v3, v4

    move-object v4, v0

    move-object v0, v1

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_8

    .line 93
    :catch_7
    move-exception v1

    move-object v3, v4

    move-object v4, v0

    move-object v0, v1

    goto :goto_6

    :catch_8
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_6

    .line 90
    :catch_9
    move-exception v0

    move-object v1, v4

    goto/16 :goto_1

    :catch_a
    move-exception v1

    move-object v12, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v12

    goto/16 :goto_1
.end method
