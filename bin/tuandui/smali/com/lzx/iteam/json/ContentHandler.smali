.class public interface abstract Lcom/lzx/iteam/json/ContentHandler;
.super Ljava/lang/Object;
.source "ContentHandler.java"


# virtual methods
.method public abstract endArray()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endJSON()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endObject()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endObjectEntry()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract primitive(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startArray()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startJSON()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startObject()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startObjectEntry(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lzx/iteam/json/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
