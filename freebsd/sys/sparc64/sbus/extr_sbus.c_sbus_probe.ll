; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFW_SBUS_TYPE = common dso_local global i32 0, align 4
@OFW_SBUS_NAME = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"U2S UPA-SBus bridge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sbus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbus_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i8* @ofw_bus_get_type(i32 %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @OFW_SBUS_TYPE, align 4
  %12 = call i64 @strcmp(i8* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %3, align 4
  %16 = call i8* @ofw_bus_get_name(i32 %15)
  %17 = load i32, i32* @OFW_SBUS_NAME, align 4
  %18 = call i64 @strcmp(i8* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %14, %9
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_set_desc(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i8* @ofw_bus_get_type(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @ofw_bus_get_name(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
