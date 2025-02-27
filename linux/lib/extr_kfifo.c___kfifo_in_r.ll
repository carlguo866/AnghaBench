; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kfifo.c___kfifo_in_r.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kfifo.c___kfifo_in_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kfifo_in_r(%struct.__kfifo* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.__kfifo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.__kfifo* %0, %struct.__kfifo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %9, align 8
  %13 = add i64 %11, %12
  %14 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %15 = call i32 @kfifo_unused(%struct.__kfifo* %14)
  %16 = zext i32 %15 to i64
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %42

19:                                               ; preds = %4
  %20 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @__kfifo_poke_n(%struct.__kfifo* %20, i32 %21, i64 %22)
  %24 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %28 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %29, %30
  %32 = call i32 @kfifo_copy_in(%struct.__kfifo* %24, i8* %25, i32 %26, i64 %31)
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %34, %35
  %37 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %38 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %19, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @kfifo_unused(%struct.__kfifo*) #1

declare dso_local i32 @__kfifo_poke_n(%struct.__kfifo*, i32, i64) #1

declare dso_local i32 @kfifo_copy_in(%struct.__kfifo*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
