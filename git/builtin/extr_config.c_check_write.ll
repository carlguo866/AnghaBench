; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_config.c_check_write.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_config.c_check_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@given_config_source = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@startup_info = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"not in a git directory\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"writing to stdin is not supported\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"writing config blobs is not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_write() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @given_config_source, i32 0, i32 2), align 8
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @startup_info, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @die(i32 %9)
  br label %11

11:                                               ; preds = %8, %3, %0
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @given_config_source, i32 0, i32 1), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @die(i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @given_config_source, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @die(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
