; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_t4_fwcache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_t4_fwcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_error = type { i32 }

@FW_PARAM_DEV_FWCACHE_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cudbg_init*, %struct.cudbg_error*)* @cudbg_t4_fwcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cudbg_t4_fwcache(%struct.cudbg_init* %0, %struct.cudbg_error* %1) #0 {
  %3 = alloca %struct.cudbg_init*, align 8
  %4 = alloca %struct.cudbg_error*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %3, align 8
  store %struct.cudbg_error* %1, %struct.cudbg_error** %4, align 8
  %7 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %8 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %7, i32 0, i32 0
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %5, align 8
  %10 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %11 = call i64 @is_fw_attached(%struct.cudbg_init* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = load i32, i32* @FW_PARAM_DEV_FWCACHE_FLUSH, align 4
  %16 = call i32 @t4_fwcache(%struct.adapter* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.cudbg_error*, %struct.cudbg_error** %4, align 8
  %22 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %13
  br label %24

24:                                               ; preds = %23, %2
  ret void
}

declare dso_local i64 @is_fw_attached(%struct.cudbg_init*) #1

declare dso_local i32 @t4_fwcache(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
