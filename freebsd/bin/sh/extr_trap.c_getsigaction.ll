; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_getsigaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_getsigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @getsigaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsigaction(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @sigaction(i32 %7, %struct.sigaction* null, %struct.sigaction* %6)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %5, align 8
  store i64 %13, i64* %14, align 8
  store i32 1, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
