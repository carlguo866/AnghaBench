; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i64, i32, i32*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kfifo_alloc(%struct.__kfifo* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.__kfifo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.__kfifo* %0, %struct.__kfifo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @is_power_of_2(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @rounddown_pow_of_two(i32 %14)
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %13, %4
  %17 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %18 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %20 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %23 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %28 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %30 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %29, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %57

33:                                               ; preds = %16
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* %8, align 8
  %37 = mul i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %9, align 4
  %40 = call i32* @kmalloc(i32 %38, i32 %39)
  %41 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %42 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %44 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %33
  %48 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %49 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %57

52:                                               ; preds = %33
  %53 = load i32, i32* %7, align 4
  %54 = sub i32 %53, 1
  %55 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %56 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %47, %26
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
