; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbus.c_smbus_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbus.c_smbus_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbus_ivar = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c" at addr 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @smbus_print_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbus_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.smbus_ivar*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.smbus_ivar* @device_get_ivars(i32 %7)
  store %struct.smbus_ivar* %8, %struct.smbus_ivar** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @bus_print_child_header(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.smbus_ivar*, %struct.smbus_ivar** %5, align 8
  %13 = getelementptr inbounds %struct.smbus_ivar, %struct.smbus_ivar* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.smbus_ivar*, %struct.smbus_ivar** %5, align 8
  %18 = getelementptr inbounds %struct.smbus_ivar, %struct.smbus_ivar* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %16, %2
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @bus_print_child_footer(i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local %struct.smbus_ivar* @device_get_ivars(i32) #1

declare dso_local i32 @bus_print_child_header(i32, i32) #1

declare dso_local i64 @printf(i8*, i64) #1

declare dso_local i64 @bus_print_child_footer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
