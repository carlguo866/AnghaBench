; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c_smu_get_ofdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c_smu_get_ofdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

@smu = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.platform_device* @smu_get_ofdev() #0 {
  %1 = alloca %struct.platform_device*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smu, align 8
  %3 = icmp ne %struct.TYPE_2__* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store %struct.platform_device* null, %struct.platform_device** %1, align 8
  br label %9

5:                                                ; preds = %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smu, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  store %struct.platform_device* %8, %struct.platform_device** %1, align 8
  br label %9

9:                                                ; preds = %5, %4
  %10 = load %struct.platform_device*, %struct.platform_device** %1, align 8
  ret %struct.platform_device* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
