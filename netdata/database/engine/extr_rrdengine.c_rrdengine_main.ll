; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_rrdengine_main.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_rrdengine_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@RRDENG_MIN_PAGE_CACHE_SIZE_MB = common dso_local global i32 0, align 4
@RRDENG_MIN_DISK_SPACE_MB = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Hello world!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdengine_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rrdengine_instance*, align 8
  %3 = load i32, i32* @RRDENG_MIN_PAGE_CACHE_SIZE_MB, align 4
  %4 = load i32, i32* @RRDENG_MIN_DISK_SPACE_MB, align 4
  %5 = call i32 @rrdeng_init(%struct.rrdengine_instance** %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @exit(i32 %9) #3
  unreachable

11:                                               ; preds = %0
  %12 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %2, align 8
  %13 = call i32 @rrdeng_exit(%struct.rrdengine_instance* %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @rrdeng_init(%struct.rrdengine_instance**, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @rrdeng_exit(%struct.rrdengine_instance*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
