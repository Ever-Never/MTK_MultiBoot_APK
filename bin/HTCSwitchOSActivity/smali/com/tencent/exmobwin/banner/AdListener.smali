.class public interface abstract Lcom/tencent/exmobwin/banner/AdListener;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_CONNECTION_FAILED:I = 0x1

.field public static final ERROR_GET_IMAGE_FAILED:I = 0xc

.field public static final ERROR_GIF_DECODE_FAILED:I = 0xb

.field public static final ERROR_NO_AVAILABLE_ADS:I = 0xa

.field public static final ERROR_SERVER_DATA_EXCEPTION:I = 0xd


# virtual methods
.method public abstract onReceiveAd()V
.end method

.method public abstract onReceiveFailed(I)V
.end method
