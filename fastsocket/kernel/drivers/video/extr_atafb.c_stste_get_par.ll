; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_stste_get_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_stste_get_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.atafb_par = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@shifter_tt = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@shifter = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@EXTD_SHIFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atafb_par*)* @stste_get_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stste_get_par(%struct.atafb_par* %0) #0 {
  %2 = alloca %struct.atafb_par*, align 8
  %3 = alloca i64, align 8
  store %struct.atafb_par* %0, %struct.atafb_par** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shifter_tt, i32 0, i32 0), align 4
  %5 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %6 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %4, i32* %8, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @shifter, i32 0, i32 3), align 4
  %10 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %11 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @shifter, i32 0, i32 0), align 4
  %15 = and i32 %14, 255
  %16 = shl i32 %15, 16
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @shifter, i32 0, i32 1), align 4
  %18 = and i32 %17, 255
  %19 = shl i32 %18, 8
  %20 = or i32 %16, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %3, align 8
  %22 = load i32, i32* @EXTD_SHIFTER, align 4
  %23 = call i64 @ATARIHW_PRESENT(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @shifter, i32 0, i32 2), align 4
  %27 = and i32 %26, 255
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %3, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %25, %1
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @phys_to_virt(i64 %32)
  %34 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %35 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i64 @ATARIHW_PRESENT(i32) #1

declare dso_local i32 @phys_to_virt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
