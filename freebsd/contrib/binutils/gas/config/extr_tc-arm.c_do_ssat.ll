; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_ssat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_ssat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64 }

@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_ssat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ssat() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i64 0
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = shl i32 %4, 12
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %7 = or i32 %6, %5
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  %13 = shl i32 %12, 16
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %15 = or i32 %14, %13
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %21 = or i32 %20, %19
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %0
  %28 = call i32 @encode_arm_shift(i32 3)
  br label %29

29:                                               ; preds = %27, %0
  ret void
}

declare dso_local i32 @encode_arm_shift(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
