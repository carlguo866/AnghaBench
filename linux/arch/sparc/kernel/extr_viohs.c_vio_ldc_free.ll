; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_vio_ldc_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_vio_ldc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vio_ldc_free(%struct.vio_driver_state* %0) #0 {
  %2 = alloca %struct.vio_driver_state*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %2, align 8
  %3 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %4 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @ldc_free(i32* %5)
  %7 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %8 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %7, i32 0, i32 2
  store i32* null, i32** %8, align 8
  %9 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %10 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @kfree(i32* %11)
  %13 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %14 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %16 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  ret void
}

declare dso_local i32 @ldc_free(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
