; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_dofwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_dofwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i64, i32)* @dofwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dofwd(%struct.parse* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.parse*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.parse*, %struct.parse** %4, align 8
  %8 = getelementptr inbounds %struct.parse, %struct.parse* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %23

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.parse*, %struct.parse** %4, align 8
  %19 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %17, i32* %22, align 4
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
