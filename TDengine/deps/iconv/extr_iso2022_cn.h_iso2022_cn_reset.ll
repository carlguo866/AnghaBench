; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_cn.h_iso2022_cn_reset.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_cn.h_iso2022_cn_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SPLIT_STATE = common dso_local global i32 0, align 4
@state2 = common dso_local global i32 0, align 4
@state3 = common dso_local global i32 0, align 4
@state1 = common dso_local global i64 0, align 8
@STATE_ASCII = common dso_local global i64 0, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@SI = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32)* @iso2022_cn_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_cn_reset(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @SPLIT_STATE, align 4
  %13 = load i32, i32* @state2, align 4
  %14 = load i32, i32* @state3, align 4
  %15 = load i64, i64* @state1, align 8
  %16 = load i64, i64* @STATE_ASCII, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %22, i32* %4, align 4
  br label %28

23:                                               ; preds = %18
  %24 = load i8, i8* @SI, align 1
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %24, i8* %26, align 1
  store i32 1, i32* %4, align 4
  br label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %23, %21
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
