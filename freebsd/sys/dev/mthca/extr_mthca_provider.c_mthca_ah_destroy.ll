; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_ah_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_ah_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ah*)* @mthca_ah_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_ah_destroy(%struct.ib_ah* %0) #0 {
  %2 = alloca %struct.ib_ah*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %2, align 8
  %3 = load %struct.ib_ah*, %struct.ib_ah** %2, align 8
  %4 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @to_mdev(i32 %5)
  %7 = load %struct.ib_ah*, %struct.ib_ah** %2, align 8
  %8 = call i32 @to_mah(%struct.ib_ah* %7)
  %9 = call i32 @mthca_destroy_ah(i32 %6, i32 %8)
  %10 = load %struct.ib_ah*, %struct.ib_ah** %2, align 8
  %11 = call i32 @kfree(%struct.ib_ah* %10)
  ret i32 0
}

declare dso_local i32 @mthca_destroy_ah(i32, i32) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local i32 @to_mah(%struct.ib_ah*) #1

declare dso_local i32 @kfree(%struct.ib_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
