; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_cp.c_ieee802_1x_cp_step_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_cp.c_ieee802_1x_cp_step_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_cp_sm = type { i32 }

@CP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee802_1x_cp_sm*)* @ieee802_1x_cp_step_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_cp_step_run(%struct.ieee802_1x_cp_sm* %0) #0 {
  %2 = alloca %struct.ieee802_1x_cp_sm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ieee802_1x_cp_sm* %0, %struct.ieee802_1x_cp_sm** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 100
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load %struct.ieee802_1x_cp_sm*, %struct.ieee802_1x_cp_sm** %2, align 8
  %10 = getelementptr inbounds %struct.ieee802_1x_cp_sm, %struct.ieee802_1x_cp_sm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @CP, align 4
  %13 = call i32 @SM_STEP_RUN(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.ieee802_1x_cp_sm*, %struct.ieee802_1x_cp_sm** %2, align 8
  %16 = getelementptr inbounds %struct.ieee802_1x_cp_sm, %struct.ieee802_1x_cp_sm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  br label %24

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %5

24:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @SM_STEP_RUN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
