; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_event_read_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_event_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEP_EVENT_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@TEP_EVENT_OP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @event_read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_read_id() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @TEP_EVENT_ITEM, align 4
  %5 = call i64 @read_expected_item(i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %27

8:                                                ; preds = %0
  %9 = load i32, i32* @TEP_EVENT_OP, align 4
  %10 = call i64 @read_expected(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 -1, i32* %1, align 4
  br label %27

13:                                               ; preds = %8
  %14 = load i32, i32* @TEP_EVENT_ITEM, align 4
  %15 = call i64 @read_expect_type(i32 %14, i8** %2)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %24

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @strtoul(i8* %19, i32* null, i32 0)
  store i32 %20, i32* %3, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @free_token(i8* %21)
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* %1, align 4
  br label %27

24:                                               ; preds = %17
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @free_token(i8* %25)
  store i32 -1, i32* %1, align 4
  br label %27

27:                                               ; preds = %24, %18, %12, %7
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i64 @read_expected_item(i32, i8*) #1

declare dso_local i64 @read_expected(i32, i8*) #1

declare dso_local i64 @read_expect_type(i32, i8**) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @free_token(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
