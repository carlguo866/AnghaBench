; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_discard_load_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_discard_load_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.discard_load_info = type { i64, i64, %struct.cache* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, %struct.discard_load_info*)* @discard_load_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discard_load_info_init(%struct.cache* %0, %struct.discard_load_info* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.discard_load_info*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.discard_load_info* %1, %struct.discard_load_info** %4, align 8
  %5 = load %struct.cache*, %struct.cache** %3, align 8
  %6 = load %struct.discard_load_info*, %struct.discard_load_info** %4, align 8
  %7 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %6, i32 0, i32 2
  store %struct.cache* %5, %struct.cache** %7, align 8
  %8 = load %struct.discard_load_info*, %struct.discard_load_info** %4, align 8
  %9 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.discard_load_info*, %struct.discard_load_info** %4, align 8
  %11 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
