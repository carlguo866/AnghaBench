; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_free_sysfs_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_free_sysfs_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etr_buf*)* @tmc_etr_free_sysfs_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmc_etr_free_sysfs_buf(%struct.etr_buf* %0) #0 {
  %2 = alloca %struct.etr_buf*, align 8
  store %struct.etr_buf* %0, %struct.etr_buf** %2, align 8
  %3 = load %struct.etr_buf*, %struct.etr_buf** %2, align 8
  %4 = icmp ne %struct.etr_buf* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.etr_buf*, %struct.etr_buf** %2, align 8
  %7 = call i32 @tmc_free_etr_buf(%struct.etr_buf* %6)
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

declare dso_local i32 @tmc_free_etr_buf(%struct.etr_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
