; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_list_player.c_uninstall_playlist_observer.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_list_player.c_uninstall_playlist_observer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@libvlc_MediaListItemDeleted = common dso_local global i32 0, align 4
@mlist_item_deleted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @uninstall_playlist_observer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninstall_playlist_observer(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = call i32 @assert_locked(%struct.TYPE_6__* %3)
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = call i32 @mlist_em(%struct.TYPE_6__* %11)
  %13 = load i32, i32* @libvlc_MediaListItemDeleted, align 4
  %14 = load i32, i32* @mlist_item_deleted, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = call i32 @libvlc_event_detach(i32 %12, i32 %13, i32 %14, %struct.TYPE_6__* %15)
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @assert_locked(%struct.TYPE_6__*) #1

declare dso_local i32 @libvlc_event_detach(i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mlist_em(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
