; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..core_info.c_core_info_init_current_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..core_info.c_core_info_init_current_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@core_info_current = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_info_init_current_core() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @calloc(i32 1, i32 4)
  %3 = inttoptr i64 %2 to i32*
  store i32* %3, i32** @core_info_current, align 8
  %4 = load i32*, i32** @core_info_current, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %8

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* %1, align 4
  ret i32 %9
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
