; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_stste_set_screen_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_stste_set_screen_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8, i8 }

@shifter_st = common dso_local global %struct.TYPE_2__ zeroinitializer, align 1
@EXTD_SHIFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @stste_set_screen_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stste_set_screen_base(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @atari_stram_to_phys(i8* %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 16711680
  %8 = lshr i64 %7, 16
  %9 = trunc i64 %8 to i8
  store i8 %9, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shifter_st, i32 0, i32 0), align 1
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 65280
  %12 = lshr i64 %11, 8
  %13 = trunc i64 %12 to i8
  store i8 %13, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shifter_st, i32 0, i32 1), align 1
  %14 = load i32, i32* @EXTD_SHIFTER, align 4
  %15 = call i64 @ATARIHW_PRESENT(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, 255
  %20 = trunc i64 %19 to i8
  store i8 %20, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shifter_st, i32 0, i32 2), align 1
  br label %21

21:                                               ; preds = %17, %1
  ret void
}

declare dso_local i64 @atari_stram_to_phys(i8*) #1

declare dso_local i64 @ATARIHW_PRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
