; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cuboot.c_cuboot_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cuboot.c_cuboot_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8*, i64 }

@_end = common dso_local global i64 0, align 8
@loader_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cuboot_init(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* @_end, align 8
  %14 = sub i64 %12, %13
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @loader_info, i32 0, i32 0), align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %19, %20
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i64 [ %21, %18 ], [ 0, %22 ]
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @loader_info, i32 0, i32 1), align 8
  %25 = load i64, i64* %8, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @loader_info, i32 0, i32 2), align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %27, %28
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @loader_info, i32 0, i32 3), align 8
  %30 = load i64, i64* @_end, align 8
  %31 = load i64, i64* %11, align 8
  %32 = sub i64 %31, 1048576
  %33 = call i32 @simple_alloc_init(i64 %30, i64 %32, i32 32, i32 64)
  ret void
}

declare dso_local i32 @simple_alloc_init(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
