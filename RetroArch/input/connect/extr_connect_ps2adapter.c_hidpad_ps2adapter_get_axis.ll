; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps2adapter.c_hidpad_ps2adapter_get_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps2adapter.c_hidpad_ps2adapter_get_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_ps2adapter_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hidpad_ps2adapter_get_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpad_ps2adapter_get_axis(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hidpad_ps2adapter_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hidpad_ps2adapter_data*
  store %struct.hidpad_ps2adapter_data* %9, %struct.hidpad_ps2adapter_data** %7, align 8
  %10 = load %struct.hidpad_ps2adapter_data*, %struct.hidpad_ps2adapter_data** %7, align 8
  %11 = icmp ne %struct.hidpad_ps2adapter_data* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp uge i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %54

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %42 [
    i32 0, label %18
    i32 1, label %24
    i32 2, label %30
    i32 3, label %36
  ]

18:                                               ; preds = %16
  %19 = load %struct.hidpad_ps2adapter_data*, %struct.hidpad_ps2adapter_data** %7, align 8
  %20 = getelementptr inbounds %struct.hidpad_ps2adapter_data, %struct.hidpad_ps2adapter_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  br label %42

24:                                               ; preds = %16
  %25 = load %struct.hidpad_ps2adapter_data*, %struct.hidpad_ps2adapter_data** %7, align 8
  %26 = getelementptr inbounds %struct.hidpad_ps2adapter_data, %struct.hidpad_ps2adapter_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %42

30:                                               ; preds = %16
  %31 = load %struct.hidpad_ps2adapter_data*, %struct.hidpad_ps2adapter_data** %7, align 8
  %32 = getelementptr inbounds %struct.hidpad_ps2adapter_data, %struct.hidpad_ps2adapter_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  br label %42

36:                                               ; preds = %16
  %37 = load %struct.hidpad_ps2adapter_data*, %struct.hidpad_ps2adapter_data** %7, align 8
  %38 = getelementptr inbounds %struct.hidpad_ps2adapter_data, %struct.hidpad_ps2adapter_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %16, %36, %30, %24, %18
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %43, 8
  %45 = sub nsw i32 %44, 32768
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @abs(i32 %46) #2
  %48 = icmp sgt i32 %47, 4096
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  br label %52

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
