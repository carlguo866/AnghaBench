; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.h_vmw_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.h_vmw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i64 }

@VMWGFX_INDEX_PORT = common dso_local global i64 0, align 8
@VMWGFX_VALUE_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_private*, i32, i32)* @vmw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_write(%struct.vmw_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %8 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %12 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VMWGFX_INDEX_PORT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outl(i32 %10, i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %19 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VMWGFX_VALUE_PORT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outl(i32 %17, i64 %22)
  %24 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %25 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
