; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_unpin_panic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_unpin_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Can't unpin query buffer. Trying to recover.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_private*)* @vmw_execbuf_unpin_panic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_execbuf_unpin_panic(%struct.vmw_private* %0) #0 {
  %2 = alloca %struct.vmw_private*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %2, align 8
  %3 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %5 = load i32, i32* @HZ, align 4
  %6 = mul nsw i32 10, %5
  %7 = call i32 @vmw_fallback_wait(%struct.vmw_private* %4, i32 0, i32 1, i32 0, i32 0, i32 %6)
  %8 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %9 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @vmw_bo_pin_reserved(i32 %10, i32 0)
  %12 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %13 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %18 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vmw_bo_pin_reserved(i32 %19, i32 0)
  %21 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %22 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

declare dso_local i32 @vmw_fallback_wait(%struct.vmw_private*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vmw_bo_pin_reserved(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
