; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nvc0_bo_move_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nvc0_bo_move_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }

@NvSubCopy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, i32)* @nvc0_bo_move_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_bo_move_init(%struct.nouveau_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %7 = call i32 @RING_SPACE(%struct.nouveau_channel* %6, i32 2)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %12 = load i32, i32* @NvSubCopy, align 4
  %13 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %11, i32 %12, i32 0, i32 1)
  %14 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @OUT_RING(%struct.nouveau_channel* %14, i32 %15)
  br label %17

17:                                               ; preds = %10, %2
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NVC0(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
