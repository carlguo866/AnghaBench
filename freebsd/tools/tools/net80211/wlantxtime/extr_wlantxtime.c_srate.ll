; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlantxtime/extr_wlantxtime.c_srate.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlantxtime/extr_wlantxtime.c_srate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srate.buf = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"%u.5\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @srate(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = sdiv i32 %7, 2
  %9 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @srate.buf, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = sdiv i32 %11, 2
  %13 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @srate.buf, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %10, %6
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @srate.buf, i64 0, i64 0)
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
