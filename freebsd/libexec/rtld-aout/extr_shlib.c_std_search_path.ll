; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-aout/extr_shlib.c_std_search_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-aout/extr_shlib.c_std_search_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@standard_search_dirs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @std_search_path() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 2, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %14, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load i32*, i32** @standard_search_dirs, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @add_search_dir(i32 %12)
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %3

17:                                               ; preds = %3
  ret void
}

declare dso_local i32 @add_search_dir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
