; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_LowSetGCMOffset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_LowSetGCMOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DVD_LowSetGCMOffset.loc_offset = internal global i32 0, align 4
@__dvd_finaloffsetcb = common dso_local global i32 0, align 4
@__dvd_stopnextint = common dso_local global i64 0, align 8
@__dvd_usrdata = common dso_local global i32* null, align 8
@__dvd_setgcmoffsetcb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DVD_LowSetGCMOffset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* @DVD_LowSetGCMOffset.loc_offset, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* @__dvd_finaloffsetcb, align 4
  store i64 0, i64* @__dvd_stopnextint, align 8
  store i32* @DVD_LowSetGCMOffset.loc_offset, i32** @__dvd_usrdata, align 8
  %7 = load i32, i32* @__dvd_setgcmoffsetcb, align 4
  %8 = call i32 @DVD_LowUnlockDrive(i32 %7)
  ret i32 1
}

declare dso_local i32 @DVD_LowUnlockDrive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
