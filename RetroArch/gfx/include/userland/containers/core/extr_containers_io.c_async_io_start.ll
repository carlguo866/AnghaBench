; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_io.c_async_io_start.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_io.c_async_io_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VC_CONTAINER_IO_ASYNC_T = type { i32 }

@VC_CONTAINER_ERROR_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.VC_CONTAINER_IO_ASYNC_T* (i32*, i32, i32*)* @async_io_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.VC_CONTAINER_IO_ASYNC_T* @async_io_start(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = ptrtoint i32* %7 to i32
  %9 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32 %10)
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @VC_CONTAINER_ERROR_FAILED, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %3
  ret %struct.VC_CONTAINER_IO_ASYNC_T* null
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
