.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/exoplayer2/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/exoplayer2/PlaybackInfo;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method
