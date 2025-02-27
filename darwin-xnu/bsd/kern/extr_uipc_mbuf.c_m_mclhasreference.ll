; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_mclhasreference.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_mclhasreference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@M_EXT = common dso_local global i32 0, align 4
@EXTF_READONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_mclhasreference(%struct.mbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  %4 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %5 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @M_EXT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %13 = call i32* @m_get_rfa(%struct.mbuf* %12)
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %18 = call i32 @MEXT_FLAGS(%struct.mbuf* %17)
  %19 = load i32, i32* @EXTF_READONLY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @m_get_rfa(%struct.mbuf*) #1

declare dso_local i32 @MEXT_FLAGS(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
