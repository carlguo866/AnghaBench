; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dict_put.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dict_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dictionary*, i32)* @dict_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dict_put(%struct.dictionary* %0, i32 %1) #0 {
  %3 = alloca %struct.dictionary*, align 8
  %4 = alloca i32, align 4
  store %struct.dictionary* %0, %struct.dictionary** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %7 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %10 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = getelementptr inbounds i32, i32* %8, i64 %11
  store i32 %5, i32* %13, align 4
  %14 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %15 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %18 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %23 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %26 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %21, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
