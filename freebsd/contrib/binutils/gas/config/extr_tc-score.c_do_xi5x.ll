; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_xi5x.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_xi5x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@_IMM5 = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_xi5x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_xi5x(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @skip_whitespace(i8* %3)
  %5 = load i32, i32* @_IMM5, align 4
  %6 = call i32 @data_op2(i8** %2, i32 15, i32 %5)
  %7 = load i64, i64* @FAIL, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @end_of_line(i8* %11)
  %13 = load i64, i64* @FAIL, align 8
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %27

17:                                               ; preds = %10
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %19 = icmp ne i32 %18, 32768
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %22 = ashr i32 %21, 15
  %23 = and i32 %22, 31
  %24 = shl i32 %23, 3
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 4
  br label %27

27:                                               ; preds = %16, %20, %17
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @data_op2(i8**, i32, i32) #1

declare dso_local i32 @end_of_line(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
