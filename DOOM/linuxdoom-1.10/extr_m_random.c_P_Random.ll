; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_random.c_P_Random.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_random.c_P_Random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prndindex = common dso_local global i32 0, align 4
@rndtable = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_Random() #0 {
  %1 = load i32, i32* @prndindex, align 4
  %2 = add nsw i32 %1, 1
  %3 = and i32 %2, 255
  store i32 %3, i32* @prndindex, align 4
  %4 = load i32*, i32** @rndtable, align 8
  %5 = load i32, i32* @prndindex, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %4, i64 %6
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
