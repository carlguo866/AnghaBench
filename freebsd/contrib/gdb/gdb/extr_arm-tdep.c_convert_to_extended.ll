; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_convert_to_extended.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_convert_to_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floatformat = type { i32 }

@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@floatformat_arm_ext_big = common dso_local global i32 0, align 4
@floatformat_arm_ext_littlebyte_bigword = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.floatformat*, i8*, i8*)* @convert_to_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_to_extended(%struct.floatformat* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.floatformat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.floatformat* %0, %struct.floatformat** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @floatformat_to_doublest(%struct.floatformat* %8, i8* %9, i32* %7)
  %11 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %12 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @floatformat_from_doublest(i32* @floatformat_arm_ext_big, i32* %7, i8* %15)
  br label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @floatformat_from_doublest(i32* @floatformat_arm_ext_littlebyte_bigword, i32* %7, i8* %18)
  br label %20

20:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @floatformat_to_doublest(%struct.floatformat*, i8*, i32*) #1

declare dso_local i32 @floatformat_from_doublest(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
