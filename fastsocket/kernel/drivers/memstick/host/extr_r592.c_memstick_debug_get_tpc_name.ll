; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_memstick_debug_get_tpc_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_memstick_debug_get_tpc_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tpc_names = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memstick_debug_get_tpc_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i8**, i8*** @tpc_names, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sub nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6
  %8 = load i8*, i8** %7, align 8
  ret i8* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
