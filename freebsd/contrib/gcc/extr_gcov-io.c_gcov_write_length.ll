; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov-io.c_gcov_write_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov-io.c_gcov_write_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32* }

@gcov_var = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GCOV_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gcov_write_length(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %7 = icmp slt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @gcc_assert(i32 %8)
  %10 = load i64, i64* %2, align 8
  %11 = add nsw i64 %10, 2
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 1), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 2), align 8
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = icmp sle i64 %11, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 1), align 8
  %21 = icmp sge i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 1), align 8
  %26 = sub nsw i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 2), align 8
  %29 = load i32, i32* %3, align 4
  %30 = sub i32 %28, %29
  %31 = sub i32 %30, 2
  store i32 %31, i32* %4, align 4
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 3), align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 2), align 8
  %40 = load i32, i32* @GCOV_BLOCK_SIZE, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 2), align 8
  %44 = call i32 @gcov_write_block(i32 %43)
  br label %45

45:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcov_write_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
