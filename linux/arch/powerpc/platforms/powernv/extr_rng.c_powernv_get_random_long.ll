; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_rng.c_powernv_get_random_long.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_rng.c_powernv_get_random_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernv_rng = type { i32 }

@powernv_rng = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @powernv_get_random_long(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.powernv_rng*, align 8
  store i64* %0, i64** %2, align 8
  %4 = load i32, i32* @powernv_rng, align 4
  %5 = call %struct.powernv_rng* @get_cpu_var(i32 %4)
  store %struct.powernv_rng* %5, %struct.powernv_rng** %3, align 8
  %6 = load %struct.powernv_rng*, %struct.powernv_rng** %3, align 8
  %7 = load %struct.powernv_rng*, %struct.powernv_rng** %3, align 8
  %8 = getelementptr inbounds %struct.powernv_rng, %struct.powernv_rng* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @in_be64(i32 %9)
  %11 = call i64 @rng_whiten(%struct.powernv_rng* %6, i32 %10)
  %12 = load i64*, i64** %2, align 8
  store i64 %11, i64* %12, align 8
  %13 = load %struct.powernv_rng*, %struct.powernv_rng** %3, align 8
  %14 = call i32 @put_cpu_var(%struct.powernv_rng* %13)
  ret i32 1
}

declare dso_local %struct.powernv_rng* @get_cpu_var(i32) #1

declare dso_local i64 @rng_whiten(%struct.powernv_rng*, i32) #1

declare dso_local i32 @in_be64(i32) #1

declare dso_local i32 @put_cpu_var(%struct.powernv_rng*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
