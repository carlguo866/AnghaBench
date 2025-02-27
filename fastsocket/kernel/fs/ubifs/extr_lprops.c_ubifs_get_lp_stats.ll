; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_get_lp_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_get_lp_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_lp_stats = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_get_lp_stats(%struct.ubifs_info* %0, %struct.ubifs_lp_stats* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_lp_stats*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_lp_stats* %1, %struct.ubifs_lp_stats** %4, align 8
  %5 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %6 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.ubifs_lp_stats*, %struct.ubifs_lp_stats** %4, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 1
  %11 = call i32 @memcpy(%struct.ubifs_lp_stats* %8, i32* %10, i32 4)
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock(i32* %13)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.ubifs_lp_stats*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
