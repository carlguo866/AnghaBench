; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_ge_b850v3_lvds_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_ge_b850v3_lvds_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ge_b850v3_lvds_dev_mutex = common dso_local global i32 0, align 4
@ge_b850v3_lvds_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ge_b850v3_lvds_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ge_b850v3_lvds_remove() #0 {
  %1 = call i32 @mutex_lock(i32* @ge_b850v3_lvds_dev_mutex)
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %3 = icmp ne %struct.TYPE_2__* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %13

5:                                                ; preds = %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = call i32 @drm_bridge_remove(i32* %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @kfree(i32 %11)
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  br label %13

13:                                               ; preds = %5, %4
  %14 = call i32 @mutex_unlock(i32* @ge_b850v3_lvds_dev_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_bridge_remove(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
