; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_cardbus_deactivate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_cardbus_deactivate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @cbb_cardbus_deactivate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbb_cardbus_deactivate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @device_get_parent(i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.resource*, %struct.resource** %11, align 8
  %19 = call i32 @BUS_DEACTIVATE_RESOURCE(i32 %14, i32 %15, i32 %16, i32 %17, %struct.resource* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %29

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @device_get_softc(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @cbb_cardbus_auto_open(i32 %26, i32 %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %22
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @BUS_DEACTIVATE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @cbb_cardbus_auto_open(i32, i32) #1

declare dso_local i32 @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
