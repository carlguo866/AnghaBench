; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/ext/extr_egl_khr_sync_client.c_egl_sync_term.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/ext/extr_egl_khr_sync_client.c_egl_sync_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@eglIntDestroySync_impl = common dso_local global i32 0, align 4
@EGLINTDESTROYSYNC_ID = common dso_local global i32 0, align 4
@EGL_SYNC_FENCE_KHR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @egl_sync_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @egl_sync_term(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32* (...) @CLIENT_GET_THREAD_STATE()
  store i32* %4, i32** %3, align 8
  %5 = load i32, i32* @eglIntDestroySync_impl, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @EGLINTDESTROYSYNC_ID, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @RPC_UINT(i32 %10)
  %12 = call i32 @RPC_CALL1(i32 %5, i32* %6, i32 %7, i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = call i32 @khronos_platform_semaphore_destroy(i32* %14)
  ret void
}

declare dso_local i32* @CLIENT_GET_THREAD_STATE(...) #1

declare dso_local i32 @RPC_CALL1(i32, i32*, i32, i32) #1

declare dso_local i32 @RPC_UINT(i32) #1

declare dso_local i32 @khronos_platform_semaphore_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
