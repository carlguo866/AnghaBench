; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_powermac_nvram_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/powermac_nvram/extr_powermac_nvram.c_powermac_nvram_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nvram\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"amd-0137\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"nvram,flash\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Apple NVRAM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @powermac_nvram_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powermac_nvram_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i8* @ofw_bus_get_type(i32 %6)
  store i8* %7, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i8* @ofw_bus_get_compat(i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %36

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ofw_bus_is_compatible(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %27, %23
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_set_desc(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %31, %21, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i8* @ofw_bus_get_type(i32) #1

declare dso_local i8* @ofw_bus_get_compat(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
