; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_hash_mc_addr_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_hash_mc_addr_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"e1000_hash_mc_addr_generic\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_hash_mc_addr_generic(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 32
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %20, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %16, %17
  %19 = icmp ne i32 %18, 255
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %15

23:                                               ; preds = %15
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %28 [
    i32 0, label %29
    i32 1, label %30
    i32 2, label %33
    i32 3, label %36
  ]

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %23, %28
  br label %39

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %39

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 2
  store i32 %35, i32* %7, align 4
  br label %39

36:                                               ; preds = %23
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %33, %30, %29
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 8, %44
  %46 = ashr i32 %43, %45
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %46, %51
  %53 = and i32 %40, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
