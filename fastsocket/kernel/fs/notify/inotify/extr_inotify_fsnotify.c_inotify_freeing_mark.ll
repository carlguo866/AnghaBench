; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify_fsnotify.c_inotify_freeing_mark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify_fsnotify.c_inotify_freeing_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark_entry = type { i32 }
%struct.fsnotify_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsnotify_mark_entry*, %struct.fsnotify_group*)* @inotify_freeing_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inotify_freeing_mark(%struct.fsnotify_mark_entry* %0, %struct.fsnotify_group* %1) #0 {
  %3 = alloca %struct.fsnotify_mark_entry*, align 8
  %4 = alloca %struct.fsnotify_group*, align 8
  store %struct.fsnotify_mark_entry* %0, %struct.fsnotify_mark_entry** %3, align 8
  store %struct.fsnotify_group* %1, %struct.fsnotify_group** %4, align 8
  %5 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %3, align 8
  %6 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %7 = call i32 @inotify_ignored_and_remove_idr(%struct.fsnotify_mark_entry* %5, %struct.fsnotify_group* %6)
  ret void
}

declare dso_local i32 @inotify_ignored_and_remove_idr(%struct.fsnotify_mark_entry*, %struct.fsnotify_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
