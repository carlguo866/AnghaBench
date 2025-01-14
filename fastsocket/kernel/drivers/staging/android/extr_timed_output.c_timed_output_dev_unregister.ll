; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_timed_output.c_timed_output_dev_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_timed_output.c_timed_output_dev_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timed_output_dev = type { i32, i32 }

@dev_attr_enable = common dso_local global i32 0, align 4
@timed_output_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timed_output_dev_unregister(%struct.timed_output_dev* %0) #0 {
  %2 = alloca %struct.timed_output_dev*, align 8
  store %struct.timed_output_dev* %0, %struct.timed_output_dev** %2, align 8
  %3 = load %struct.timed_output_dev*, %struct.timed_output_dev** %2, align 8
  %4 = getelementptr inbounds %struct.timed_output_dev, %struct.timed_output_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @device_remove_file(i32 %5, i32* @dev_attr_enable)
  %7 = load i32, i32* @timed_output_class, align 4
  %8 = load %struct.timed_output_dev*, %struct.timed_output_dev** %2, align 8
  %9 = getelementptr inbounds %struct.timed_output_dev, %struct.timed_output_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MKDEV(i32 0, i32 %10)
  %12 = call i32 @device_destroy(i32 %7, i32 %11)
  %13 = load %struct.timed_output_dev*, %struct.timed_output_dev** %2, align 8
  %14 = getelementptr inbounds %struct.timed_output_dev, %struct.timed_output_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_set_drvdata(i32 %15, i32* null)
  ret void
}

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
