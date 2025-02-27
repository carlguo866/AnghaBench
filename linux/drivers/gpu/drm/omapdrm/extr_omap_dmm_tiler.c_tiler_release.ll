; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.tiler_block = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@omap_dmm = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"failed to release block\0A\00", align 1
@list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tiler_release(%struct.tiler_block* %0) #0 {
  %2 = alloca %struct.tiler_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.tiler_block* %0, %struct.tiler_block** %2, align 8
  %5 = load %struct.tiler_block*, %struct.tiler_block** %2, align 8
  %6 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %5, i32 0, i32 1
  %7 = call i32 @tcm_free(%struct.TYPE_3__* %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.tiler_block*, %struct.tiler_block** %2, align 8
  %9 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @omap_dmm, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %13, %1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @list_lock, i64 %19)
  %21 = load %struct.tiler_block*, %struct.tiler_block** %2, align 8
  %22 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @list_lock, i64 %24)
  %26 = load %struct.tiler_block*, %struct.tiler_block** %2, align 8
  %27 = call i32 @kfree(%struct.tiler_block* %26)
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @tcm_free(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.tiler_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
