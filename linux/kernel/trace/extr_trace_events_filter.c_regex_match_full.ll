; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_regex_match_full.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_regex_match_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regex = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.regex*, i32)* @regex_match_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regex_match_full(i8* %0, %struct.regex* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.regex*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.regex* %1, %struct.regex** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.regex*, %struct.regex** %6, align 8
  %13 = getelementptr inbounds %struct.regex, %struct.regex* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strcmp(i8* %11, i32 %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.regex*, %struct.regex** %6, align 8
  %21 = getelementptr inbounds %struct.regex, %struct.regex* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @strncmp(i8* %19, i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %18, %10
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
