; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_cpu_hash.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_cpu_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parallel_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parallel_data*, i32)* @padata_cpu_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padata_cpu_hash(%struct.parallel_data* %0, i32 %1) #0 {
  %3 = alloca %struct.parallel_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.parallel_data* %0, %struct.parallel_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.parallel_data*, %struct.parallel_data** %3, align 8
  %8 = getelementptr inbounds %struct.parallel_data, %struct.parallel_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cpumask_weight(i32 %10)
  %12 = urem i32 %6, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.parallel_data*, %struct.parallel_data** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @padata_index_to_cpu(%struct.parallel_data* %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @cpumask_weight(i32) #1

declare dso_local i32 @padata_index_to_cpu(%struct.parallel_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
