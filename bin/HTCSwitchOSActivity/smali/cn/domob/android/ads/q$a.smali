.class Lcn/domob/android/ads/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/q$a$b;,
        Lcn/domob/android/ads/q$a$c;,
        Lcn/domob/android/ads/q$a$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/q$a; = null

.field private static final f:J = 0x927c0L


# instance fields
.field private b:Landroid/location/Location;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 671
    new-instance v0, Lcn/domob/android/ads/q$a;

    invoke-direct {v0}, Lcn/domob/android/ads/q$a;-><init>()V

    sput-object v0, Lcn/domob/android/ads/q$a;->a:Lcn/domob/android/ads/q$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput v0, p0, Lcn/domob/android/ads/q$a;->c:I

    .line 675
    iput v0, p0, Lcn/domob/android/ads/q$a;->d:I

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/q$a;->e:Z

    .line 698
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/q$a;)I
    .locals 1
    .parameter

    .prologue
    .line 670
    invoke-direct {p0}, Lcn/domob/android/ads/q$a;->b()I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;)Landroid/location/Location;
    .locals 10
    .parameter

    .prologue
    const-wide/32 v8, 0x927c0

    const/4 v7, 0x0

    .line 728
    :try_start_0
    iget-boolean v0, p0, Lcn/domob/android/ads/q$a;->e:Z

    if-nez v0, :cond_0

    move-object v0, v7

    .line 795
    :goto_0
    return-object v0

    .line 733
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 734
    if-eqz v0, :cond_5

    .line 736
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 737
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 740
    :goto_1
    if-nez v1, :cond_1

    .line 741
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 742
    if-eqz v1, :cond_2

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_2

    .line 744
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/ads/q$a;->c:I

    .line 745
    iput-object v1, p0, Lcn/domob/android/ads/q$a;->b:Landroid/location/Location;

    move-object v0, v1

    .line 746
    goto :goto_0

    .line 750
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_2

    .line 751
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/ads/q$a;->c:I

    .line 752
    iput-object v1, p0, Lcn/domob/android/ads/q$a;->b:Landroid/location/Location;

    move-object v0, v1

    .line 753
    goto :goto_0

    .line 757
    :cond_2
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcn/domob/android/ads/q$a;->b:Landroid/location/Location;

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcn/domob/android/ads/q$a;->b:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    add-long/2addr v3, v8

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 760
    :cond_3
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :try_start_1
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 764
    invoke-static {}, Lcn/domob/android/ads/q;->f()Lcn/domob/android/ads/J;

    move-result-object v1

    const-string v2, "Trying to get locations from the network."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 767
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 768
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 769
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 772
    :goto_2
    if-nez v1, :cond_4

    .line 773
    invoke-static {}, Lcn/domob/android/ads/q;->f()Lcn/domob/android/ads/J;

    move-result-object v0

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No location providers are available.  Ads will not be geotargeted."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/ads/q$a;->d:I

    .line 776
    monitor-exit p1

    move-object v0, v7

    goto/16 :goto_0

    .line 778
    :cond_4
    invoke-static {}, Lcn/domob/android/ads/q;->f()Lcn/domob/android/ads/J;

    move-result-object v2

    const-class v3, Lcn/domob/android/ads/q;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Location provider setup successfully."

    invoke-virtual {v2, v3, v4}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    new-instance v5, Lcn/domob/android/ads/q$a$b;

    invoke-direct {v5, p0, v0}, Lcn/domob/android/ads/q$a$b;-><init>(Lcn/domob/android/ads/q$a;Landroid/location/LocationManager;)V

    .line 781
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 784
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    :try_start_2
    invoke-direct {p0, p1}, Lcn/domob/android/ads/q$a;->b(Landroid/content/Context;)V

    .line 792
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/ads/q$a;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v7

    .line 793
    goto/16 :goto_0

    .line 784
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 794
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 795
    goto/16 :goto_0

    .line 788
    :cond_6
    iget-object v0, p0, Lcn/domob/android/ads/q$a;->b:Landroid/location/Location;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_7
    move-object v1, v7

    goto :goto_2

    :cond_8
    move-object v1, v7

    goto/16 :goto_1
.end method

.method static synthetic a(Lcn/domob/android/ads/q$a;Landroid/content/Context;)Landroid/location/Location;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcn/domob/android/ads/q$a;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected static a()Lcn/domob/android/ads/q$a;
    .locals 1

    .prologue
    .line 695
    sget-object v0, Lcn/domob/android/ads/q$a;->a:Lcn/domob/android/ads/q$a;

    return-object v0
.end method

.method private a(Landroid/location/Location;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 968
    const/4 v0, 0x0

    .line 969
    if-eqz p1, :cond_0

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-static {}, Lcn/domob/android/ads/q;->f()Lcn/domob/android/ads/J;

    move-result-object v1

    const-class v2, Lcn/domob/android/ads/q;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User coordinates are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 976
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/q$a;Landroid/location/Location;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcn/domob/android/ads/q$a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(IIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 858
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 859
    const-string v1, "version"

    const-string v2, "1.1.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    const-string v1, "host"

    const-string v2, "maps.google.com"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    const-string v1, "request_address"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 864
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 865
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 866
    const-string v3, "cell_id"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 867
    const-string v3, "location_area_code"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 868
    const-string v3, "mobile_country_code"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 869
    const-string v3, "mobile_network_code"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 870
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 871
    const-string v2, "cell_towers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 873
    invoke-static {}, Lcn/domob/android/ads/q;->f()Lcn/domob/android/ads/J;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location send:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 875
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 876
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://www.google.com/loc/json"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 877
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 879
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 881
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 882
    if-eqz v0, :cond_1

    .line 883
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 884
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 885
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 887
    :goto_0
    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 889
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 892
    :cond_0
    if-eqz v2, :cond_1

    .line 893
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 894
    if-eqz v0, :cond_1

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    const-string v2, "location"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "latitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 898
    new-instance v4, Landroid/location/Location;

    const-string v5, "jizhan"

    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 899
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 900
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 901
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 903
    invoke-direct {p0, v4, v7}, Lcn/domob/android/ads/q$a;->a(Landroid/location/Location;I)V

    .line 907
    :cond_1
    return-void
.end method

.method private a(Landroid/location/Location;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcn/domob/android/ads/q$a;->b:Landroid/location/Location;

    .line 911
    iput p2, p0, Lcn/domob/android/ads/q$a;->c:I

    .line 912
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/q$a;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 670
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/q$a;->a(IIII)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/q$a;Landroid/location/Location;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/q$a;->a(Landroid/location/Location;I)V

    return-void
.end method

.method private b()I
    .locals 3

    .prologue
    .line 920
    iget v0, p0, Lcn/domob/android/ads/q$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 931
    invoke-static {}, Lcn/domob/android/ads/q;->f()Lcn/domob/android/ads/J;

    move-result-object v0

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 935
    :goto_0
    iget v0, p0, Lcn/domob/android/ads/q$a;->c:I

    return v0

    .line 922
    :pswitch_0
    invoke-static {}, Lcn/domob/android/ads/q;->f()Lcn/domob/android/ads/J;

    move-result-object v0

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPS"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 925
    :pswitch_1
    invoke-static {}, Lcn/domob/android/ads/q;->f()Lcn/domob/android/ads/J;

    move-result-object v0

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Base"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 928
    :pswitch_2
    invoke-static {}, Lcn/domob/android/ads/q;->f()Lcn/domob/android/ads/J;

    move-result-object v0

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcn/domob/android/ads/q$a;)I
    .locals 1
    .parameter

    .prologue
    .line 670
    invoke-direct {p0}, Lcn/domob/android/ads/q$a;->c()I

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 804
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/domob/android/ads/q$a$1;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/ads/q$a$1;-><init>(Lcn/domob/android/ads/q$a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 847
    return-void
.end method

.method private c()I
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Lcn/domob/android/ads/q$a;->d:I

    packed-switch v0, :pswitch_data_0

    .line 950
    :pswitch_0
    iget v0, p0, Lcn/domob/android/ads/q$a;->d:I

    return v0

    .line 939
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcn/domob/android/ads/q$a;)J
    .locals 2
    .parameter

    .prologue
    .line 670
    invoke-direct {p0}, Lcn/domob/android/ads/q$a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private d()J
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcn/domob/android/ads/q$a;->b:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcn/domob/android/ads/q$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 958
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
