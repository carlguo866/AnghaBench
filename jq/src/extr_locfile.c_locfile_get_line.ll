; ModuleID = '/home/carl/AnghaBench/jq/src/extr_locfile.c_locfile_get_line.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_locfile.c_locfile_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locfile = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @locfile_get_line(%struct.locfile* %0, i32 %1) #0 {
  %3 = alloca %struct.locfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.locfile* %0, %struct.locfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.locfile*, %struct.locfile** %3, align 8
  %8 = getelementptr inbounds %struct.locfile, %struct.locfile* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %23, %2
  %14 = load %struct.locfile*, %struct.locfile** %3, align 8
  %15 = getelementptr inbounds %struct.locfile, %struct.locfile* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %13

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.locfile*, %struct.locfile** %3, align 8
  %30 = getelementptr inbounds %struct.locfile, %struct.locfile* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 1
  ret i32 %36
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
