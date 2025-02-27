; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_get_afc_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_get_afc_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@LGS8GXX_PROD_LGS8G75 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"AFC = %u kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gxx_state*)* @lgs8gxx_get_afc_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gxx_get_afc_phase(%struct.lgs8gxx_state* %0) #0 {
  %2 = alloca %struct.lgs8gxx_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %9 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 35, i32* %5, align 4
  br label %17

16:                                               ; preds = %1
  store i32 72, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %15
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %22, i32 %23, i32* %6)
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 8
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %3, align 4
  %37 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %38 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = mul nsw i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = ashr i32 %44, 32
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %46)
  ret i32 0
}

declare dso_local i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state*, i32, i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
