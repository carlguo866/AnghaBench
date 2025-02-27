; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_floating_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_floating_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@input_line_pointer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@EXP_CHARS = common dso_local global i32 0, align 4
@generic_floating_point_number = common dso_local global i32 0, align 4
@ERROR_EXPONENT_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"bad floating-point constant: exponent overflow\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"bad floating-point constant: unknown error code=%d\00", align 1
@O_big = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @floating_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @floating_constant(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load i32, i32* @EXP_CHARS, align 4
  %5 = call i32 @atof_generic(i32* @input_line_pointer, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %4, i32* @generic_floating_point_number)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ERROR_EXPONENT_OVERFLOW, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (i32, ...) @as_bad(i32 %13)
  br label %19

15:                                               ; preds = %8
  %16 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i32, ...) @as_bad(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %12
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* @O_big, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 4
  ret void
}

declare dso_local i32 @atof_generic(i32*, i8*, i32, i32*) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
