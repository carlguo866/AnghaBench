; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_resetdircolor.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_resetdircolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DIR_OR_LINK_TO_DIR = common dso_local global i32 0, align 4
@A_BOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @resetdircolor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resetdircolor(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @DIR_OR_LINK_TO_DIR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 1), align 8
  %12 = add nsw i64 %11, 1
  %13 = call i32 @COLOR_PAIR(i64 %12)
  %14 = load i32, i32* @A_BOLD, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @attroff(i32 %15)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 0), align 8
  br label %17

17:                                               ; preds = %10, %5, %1
  ret void
}

declare dso_local i32 @attroff(i32) #1

declare dso_local i32 @COLOR_PAIR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
