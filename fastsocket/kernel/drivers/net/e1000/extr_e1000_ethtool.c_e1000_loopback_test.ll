; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32*)* @e1000_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_loopback_test(%struct.e1000_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca i32*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %6 = call i32 @e1000_setup_desc_rings(%struct.e1000_adapter* %5)
  %7 = load i32*, i32** %4, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %14 = call i32 @e1000_setup_loopback_test(%struct.e1000_adapter* %13)
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %26

20:                                               ; preds = %12
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %22 = call i32 @e1000_run_loopback_test(%struct.e1000_adapter* %21)
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %25 = call i32 @e1000_loopback_cleanup(%struct.e1000_adapter* %24)
  br label %26

26:                                               ; preds = %20, %19
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %28 = call i32 @e1000_free_desc_rings(%struct.e1000_adapter* %27)
  br label %29

29:                                               ; preds = %26, %11
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

declare dso_local i32 @e1000_setup_desc_rings(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_setup_loopback_test(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_run_loopback_test(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_loopback_cleanup(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_free_desc_rings(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
