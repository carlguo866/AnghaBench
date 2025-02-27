; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_tsc_freq_changing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_tsc_freq_changing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_level = type { i32 }

@timecounter = common dso_local global i32* null, align 8
@tsc_timecounter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"timecounter TSC must not be in use when changing frequencies; change denied\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cf_level*, i32*)* @tsc_freq_changing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsc_freq_changing(i8* %0, %struct.cf_level* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cf_level*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.cf_level* %1, %struct.cf_level** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** @timecounter, align 8
  %12 = icmp ne i32* %11, @tsc_timecounter
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %18

14:                                               ; preds = %10
  %15 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EBUSY, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
