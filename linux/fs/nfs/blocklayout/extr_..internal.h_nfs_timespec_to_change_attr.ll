; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_..internal.h_nfs_timespec_to_change_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_..internal.h_nfs_timespec_to_change_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timespec*)* @nfs_timespec_to_change_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_timespec_to_change_attr(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %3 = load %struct.timespec*, %struct.timespec** %2, align 8
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = shl i32 %6, 30
  %8 = load %struct.timespec*, %struct.timespec** %2, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %7, %10
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
