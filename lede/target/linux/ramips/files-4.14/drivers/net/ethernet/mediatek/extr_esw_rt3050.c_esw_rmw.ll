; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_rmw.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt305x_esw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt305x_esw*, i32, i64, i64)* @esw_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_rmw(%struct.rt305x_esw* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.rt305x_esw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rt305x_esw* %0, %struct.rt305x_esw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.rt305x_esw*, %struct.rt305x_esw** %5, align 8
  %11 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.rt305x_esw*, %struct.rt305x_esw** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @esw_rmw_raw(%struct.rt305x_esw* %14, i32 %15, i64 %16, i64 %17)
  %19 = load %struct.rt305x_esw*, %struct.rt305x_esw** %5, align 8
  %20 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %19, i32 0, i32 0
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @esw_rmw_raw(%struct.rt305x_esw*, i32, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
