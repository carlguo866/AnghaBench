; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-queue-length.c_ql_end_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-queue-length.c_ql_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector = type { i32 }
%struct.dm_path = type { %struct.path_info* }
%struct.path_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path_selector*, %struct.dm_path*, i64)* @ql_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_end_io(%struct.path_selector* %0, %struct.dm_path* %1, i64 %2) #0 {
  %4 = alloca %struct.path_selector*, align 8
  %5 = alloca %struct.dm_path*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.path_info*, align 8
  store %struct.path_selector* %0, %struct.path_selector** %4, align 8
  store %struct.dm_path* %1, %struct.dm_path** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.dm_path*, %struct.dm_path** %5, align 8
  %9 = getelementptr inbounds %struct.dm_path, %struct.dm_path* %8, i32 0, i32 0
  %10 = load %struct.path_info*, %struct.path_info** %9, align 8
  store %struct.path_info* %10, %struct.path_info** %7, align 8
  %11 = load %struct.path_info*, %struct.path_info** %7, align 8
  %12 = getelementptr inbounds %struct.path_info, %struct.path_info* %11, i32 0, i32 0
  %13 = call i32 @atomic_dec(i32* %12)
  ret i32 0
}

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
