; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utildstr.h_dstr_is_empty.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utildstr.h_dstr_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dstr*)* @dstr_is_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dstr_is_empty(%struct.dstr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dstr*, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  %4 = load %struct.dstr*, %struct.dstr** %3, align 8
  %5 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.dstr*, %struct.dstr** %3, align 8
  %10 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store i32 1, i32* %2, align 4
  br label %22

14:                                               ; preds = %8
  %15 = load %struct.dstr*, %struct.dstr** %3, align 8
  %16 = getelementptr inbounds %struct.dstr, %struct.dstr* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %22

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
