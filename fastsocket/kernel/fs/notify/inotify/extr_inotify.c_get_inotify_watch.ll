; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_get_inotify_watch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_get_inotify_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_watch = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_inotify_watch(%struct.inotify_watch* %0) #0 {
  %2 = alloca %struct.inotify_watch*, align 8
  store %struct.inotify_watch* %0, %struct.inotify_watch** %2, align 8
  %3 = load %struct.inotify_watch*, %struct.inotify_watch** %2, align 8
  %4 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %3, i32 0, i32 0
  %5 = call i32 @atomic_inc(i32* %4)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
