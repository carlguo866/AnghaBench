; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_utilbmem.h_bwstrdup.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_utilbmem.h_bwstrdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @bwstrdup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bwstrdup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %12

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @wcslen(i32* %9)
  %11 = call i32* @bwstrdup_n(i32* %8, i32 %10)
  store i32* %11, i32** %2, align 8
  br label %12

12:                                               ; preds = %7, %6
  %13 = load i32*, i32** %2, align 8
  ret i32* %13
}

declare dso_local i32* @bwstrdup_n(i32*, i32) #1

declare dso_local i32 @wcslen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
