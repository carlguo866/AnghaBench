; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_insert_cpu_bpts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_insert_cpu_bpts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@dabr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@iabr = common dso_local global %struct.TYPE_3__* null, align 8
@CPU_FTR_IABR = common dso_local global i32 0, align 4
@SPRN_IABR = common dso_local global i32 0, align 4
@BP_IABR = common dso_local global i32 0, align 4
@BP_IABR_TE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @insert_cpu_bpts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_cpu_bpts() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dabr, i32 0, i32 0), align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dabr, i32 0, i32 1), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dabr, i32 0, i32 0), align 4
  %6 = and i32 %5, 7
  %7 = or i32 %4, %6
  %8 = call i32 @set_dabr(i32 %7)
  br label %9

9:                                                ; preds = %3, %0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @iabr, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i32, i32* @CPU_FTR_IABR, align 4
  %14 = call i64 @cpu_has_feature(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i32, i32* @SPRN_IABR, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @iabr, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @iabr, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BP_IABR, align 4
  %25 = load i32, i32* @BP_IABR_TE, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = or i32 %20, %27
  %29 = call i32 @mtspr(i32 %17, i32 %28)
  br label %30

30:                                               ; preds = %16, %12, %9
  ret void
}

declare dso_local i32 @set_dabr(i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
