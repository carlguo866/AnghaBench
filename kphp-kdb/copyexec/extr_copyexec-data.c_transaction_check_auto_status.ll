; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_transaction_check_auto_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_transaction_check_auto_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@auto_running_list = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [66 x i8] c"transaction_check_auto_status: call transaction_finish_execution\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"transaction_check_auto_status: %d transaction(s) finished.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transaction_check_auto_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32 0, i32* %1, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @auto_running_list, i32 0, i32 0), align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %2, align 8
  br label %5

5:                                                ; preds = %20, %0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, @auto_running_list
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = call i32 @check_is_running(%struct.TYPE_5__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = call i32 @transaction_finish_execution(%struct.TYPE_5__* %17, i32 1)
  br label %19

19:                                               ; preds = %15, %8
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %2, align 8
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* %1, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %1, align 4
  %27 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @check_is_running(%struct.TYPE_5__*) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @transaction_finish_execution(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
