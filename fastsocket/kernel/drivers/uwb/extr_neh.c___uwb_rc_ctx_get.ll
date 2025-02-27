; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_neh.c___uwb_rc_ctx_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_neh.c___uwb_rc_ctx_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, i32 }
%struct.uwb_rc_neh = type { i32 }

@UWB_RC_CTX_MAX = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, %struct.uwb_rc_neh*)* @__uwb_rc_ctx_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uwb_rc_ctx_get(%struct.uwb_rc* %0, %struct.uwb_rc_neh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_rc_neh*, align 8
  %6 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_rc_neh* %1, %struct.uwb_rc_neh** %5, align 8
  %7 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %8 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UWB_RC_CTX_MAX, align 4
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %12 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = call i32 @find_next_zero_bit(i32 %9, i32 %10, i32 %13)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @UWB_RC_CTX_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %22 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UWB_RC_CTX_MAX, align 4
  %25 = call i32 @find_first_zero_bit(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @UWB_RC_CTX_MAX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @ENFILE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %29, %19
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %36 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_bit(i32 %34, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %5, align 8
  %41 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %30
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
