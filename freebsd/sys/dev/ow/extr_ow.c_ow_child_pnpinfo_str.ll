; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_child_pnpinfo_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_child_pnpinfo_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_devinfo = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"romid=%8D\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64)* @ow_child_pnpinfo_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ow_child_pnpinfo_str(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ow_devinfo*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.ow_devinfo* @device_get_ivars(i32 %10)
  store %struct.ow_devinfo* %11, %struct.ow_devinfo** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.ow_devinfo*, %struct.ow_devinfo** %9, align 8
  %15 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %14, i32 0, i32 0
  %16 = call i32 @snprintf(i8* %12, i64 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.ow_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
