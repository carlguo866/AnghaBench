; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_eval_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_eval_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_arg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PRINT_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"expected type argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.print_arg*, i32)* @eval_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eval_type(i64 %0, %struct.print_arg* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.print_arg*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.print_arg* %1, %struct.print_arg** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %9 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PRINT_TYPE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @do_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %23

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.print_arg*, %struct.print_arg** %6, align 8
  %18 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @eval_type_str(i64 %16, i32 %20, i32 %21)
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %15, %13
  %24 = load i64, i64* %4, align 8
  ret i64 %24
}

declare dso_local i32 @do_warning(i8*) #1

declare dso_local i64 @eval_type_str(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
