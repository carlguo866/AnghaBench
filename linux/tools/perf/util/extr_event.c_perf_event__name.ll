; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_perf_event__name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_perf_event__name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@perf_event__names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @perf_event__name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i8**, i8*** @perf_event__names, align 8
  %6 = call i32 @ARRAY_SIZE(i8** %5)
  %7 = icmp uge i32 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %23

9:                                                ; preds = %1
  %10 = load i8**, i8*** @perf_event__names, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %23

17:                                               ; preds = %9
  %18 = load i8**, i8*** @perf_event__names, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %17, %16, %8
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
