; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_trace.c_generate_pm_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_trace.c_generate_pm_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USERHASH = common dso_local global i32 0, align 4
@FILEHASH = common dso_local global i32 0, align 4
@dev_hash_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_pm_trace(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %5, align 2
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr i8, i8* %12, i64 2
  %14 = bitcast i8* %13 to i8**
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @USERHASH, align 4
  %18 = urem i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i16, i16* %5, align 2
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @FILEHASH, align 4
  %22 = call i32 @hash_string(i16 zeroext %19, i8* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @dev_hash_value, align 4
  %26 = call i32 @set_magic_time(i32 %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @hash_string(i16 zeroext, i8*, i32) #1

declare dso_local i32 @set_magic_time(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
