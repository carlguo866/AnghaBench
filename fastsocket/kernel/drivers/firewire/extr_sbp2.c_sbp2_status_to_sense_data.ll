; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_sbp2_status_to_sense_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_sbp2_status_to_sense_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DID_OK = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @sbp2_status_to_sense_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2_status_to_sense_data(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 112, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 6
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 7
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 6
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  store i32 10, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 9
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 9
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 10
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 10
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 11
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 11
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 12
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 13
  store i32 %65, i32* %67, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 12
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 14
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 13
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 15
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 63
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  switch i32 %82, label %88 [
    i32 129, label %83
    i32 132, label %83
    i32 130, label %83
    i32 133, label %83
    i32 128, label %83
    i32 131, label %83
  ]

83:                                               ; preds = %2, %2, %2, %2, %2, %2
  %84 = load i32, i32* @DID_OK, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %3, align 4
  br label %91

88:                                               ; preds = %2
  %89 = load i32, i32* @DID_ERROR, align 4
  %90 = shl i32 %89, 16
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
